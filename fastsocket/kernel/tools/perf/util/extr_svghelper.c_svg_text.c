
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,double,int,char const*) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_text(int Yslot, u64 start, const char *text)
{
 if (!svgfile)
  return;

 fprintf(svgfile, "<text x=\"%4.8f\" y=\"%4.8f\">%s</text>\n",
  time2pixels(start), Yslot * SLOT_MULT+SLOT_HEIGHT/2, text);
}
