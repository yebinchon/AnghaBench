
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,double,int) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_interrupt(u64 start, int row)
{
 if (!svgfile)
  return;

 fprintf(svgfile, "<circle  cx=\"%4.8f\" cy=\"%4.2f\" r = \"0.01\"  style=\"fill:rgb(255,128,128)\"/>\n",
   time2pixels(start), row * SLOT_MULT);
 fprintf(svgfile, "<circle  cx=\"%4.8f\" cy=\"%4.2f\" r = \"0.01\"  style=\"fill:rgb(255,128,128)\"/>\n",
   time2pixels(start), row * SLOT_MULT + SLOT_HEIGHT);
}
