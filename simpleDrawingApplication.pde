//simple drawing app and can save.
//NOTE: " " is string and ''is part of variable
//NOTE:Issue with brush sizing

//variable of number of files
int ncopy=0;

//variable for ellipse
float sizeX=25;
float sizeY=25;
float addX=0;
float addY=0;

void setup() {
  size(400, 400);
  background(255);
  noStroke();
}

void brush() {
  fill(0, 255, 0);
  ellipse(mouseX, mouseY, sizeX, sizeY);

  if (key=='[') {
    addX=addX+10;
    addY=addY+10;
    ellipse(mouseX, mouseY, sizeX+addX, sizeY+addY);
    println("Size has increased");
    return;
  }
}

void draw() {


  if (mousePressed) {
    brush();
  }

  if (keyPressed) {
    if (key=='s') {
      ncopy=ncopy+1;
      save("sampleDrawing.png");
      println("File Number "+ncopy+" is Saved");
    }
    if (key=='n') {
      background(255);
      println("N is pressed");
    }
  }
}

