
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 double SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,double,double,int,double,char const*) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_box(int Yslot, u64 start, u64 end, const char *type)
{
 if (!svgfile)
  return;

 fprintf(svgfile, "<rect x=\"%4.8f\" width=\"%4.8f\" y=\"%4.1f\" height=\"%4.1f\" class=\"%s\"/>\n",
  time2pixels(start), time2pixels(end)-time2pixels(start), Yslot * SLOT_MULT, SLOT_HEIGHT, type);
}
