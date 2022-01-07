
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,double,double,...) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_partial_wakeline(u64 start, int row1, char *desc1, int row2, char *desc2)
{
 double height;

 if (!svgfile)
  return;


 if (row1 < row2) {
  if (row1) {
   fprintf(svgfile, "<line x1=\"%4.8f\" y1=\"%4.2f\" x2=\"%4.8f\" y2=\"%4.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
    time2pixels(start), row1 * SLOT_MULT + SLOT_HEIGHT, time2pixels(start), row1 * SLOT_MULT + SLOT_HEIGHT + SLOT_MULT/32);
   if (desc2)
    fprintf(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\"><text transform=\"rotate(90)\" font-size=\"0.02pt\">%s &gt;</text></g>\n",
     time2pixels(start), row1 * SLOT_MULT + SLOT_HEIGHT + SLOT_HEIGHT/48, desc2);
  }
  if (row2) {
   fprintf(svgfile, "<line x1=\"%4.8f\" y1=\"%4.2f\" x2=\"%4.8f\" y2=\"%4.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
    time2pixels(start), row2 * SLOT_MULT - SLOT_MULT/32, time2pixels(start), row2 * SLOT_MULT);
   if (desc1)
    fprintf(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\"><text transform=\"rotate(90)\" font-size=\"0.02pt\">%s &gt;</text></g>\n",
     time2pixels(start), row2 * SLOT_MULT - SLOT_MULT/32, desc1);
  }
 } else {
  if (row2) {
   fprintf(svgfile, "<line x1=\"%4.8f\" y1=\"%4.2f\" x2=\"%4.8f\" y2=\"%4.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
    time2pixels(start), row2 * SLOT_MULT + SLOT_HEIGHT, time2pixels(start), row2 * SLOT_MULT + SLOT_HEIGHT + SLOT_MULT/32);
   if (desc1)
    fprintf(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\"><text transform=\"rotate(90)\" font-size=\"0.02pt\">%s &lt;</text></g>\n",
     time2pixels(start), row2 * SLOT_MULT + SLOT_HEIGHT + SLOT_MULT/48, desc1);
  }
  if (row1) {
   fprintf(svgfile, "<line x1=\"%4.8f\" y1=\"%4.2f\" x2=\"%4.8f\" y2=\"%4.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
    time2pixels(start), row1 * SLOT_MULT - SLOT_MULT/32, time2pixels(start), row1 * SLOT_MULT);
   if (desc2)
    fprintf(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\"><text transform=\"rotate(90)\" font-size=\"0.02pt\">%s &lt;</text></g>\n",
     time2pixels(start), row1 * SLOT_MULT - SLOT_HEIGHT/32, desc2);
  }
 }
 height = row1 * SLOT_MULT;
 if (row2 > row1)
  height += SLOT_HEIGHT;
 if (row1)
  fprintf(svgfile, "<circle  cx=\"%4.8f\" cy=\"%4.2f\" r = \"0.01\"  style=\"fill:rgb(32,255,32)\"/>\n",
   time2pixels(start), height);
}
