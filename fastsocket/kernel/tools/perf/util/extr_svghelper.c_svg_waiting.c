
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 double MIN_TEXT_SIZE ;
 double SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,...) ;
 double round_text_size (double) ;
 int svgfile ;
 double time2pixels (int) ;
 char* time_to_string (int) ;

void svg_waiting(int Yslot, u64 start, u64 end)
{
 char *text;
 const char *style;
 double font_size;

 if (!svgfile)
  return;

 style = "waiting";

 if (end-start > 10 * 1000000)
  style = "WAITING";

 text = time_to_string(end-start);

 font_size = 1.0 * (time2pixels(end)-time2pixels(start));

 if (font_size > 3)
  font_size = 3;

 font_size = round_text_size(font_size);

 fprintf(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\">\n", time2pixels(start), Yslot * SLOT_MULT);
 fprintf(svgfile, "<rect x=\"0\" width=\"%4.8f\" y=\"0\" height=\"%4.1f\" class=\"%s\"/>\n",
  time2pixels(end)-time2pixels(start), SLOT_HEIGHT, style);
 if (font_size > MIN_TEXT_SIZE)
  fprintf(svgfile, "<text transform=\"rotate(90)\" font-size=\"%1.8fpt\"> %s</text>\n",
   font_size, text);
 fprintf(svgfile, "</g>\n");
}
