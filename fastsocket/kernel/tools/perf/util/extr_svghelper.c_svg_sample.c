
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 double MIN_TEXT_SIZE ;
 double SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,double,int,double,int) ;
 double round_text_size (double) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_sample(int Yslot, int cpu, u64 start, u64 end)
{
 double text_size;
 if (!svgfile)
  return;

 fprintf(svgfile, "<rect x=\"%4.8f\" width=\"%4.8f\" y=\"%4.1f\" height=\"%4.1f\" class=\"sample\"/>\n",
  time2pixels(start), time2pixels(end)-time2pixels(start), Yslot * SLOT_MULT, SLOT_HEIGHT);

 text_size = (time2pixels(end)-time2pixels(start));
 if (cpu > 9)
  text_size = text_size/2;
 if (text_size > 1.25)
  text_size = 1.25;
 text_size = round_text_size(text_size);

 if (text_size > MIN_TEXT_SIZE)
  fprintf(svgfile, "<text x=\"%1.8f\" y=\"%1.8f\" font-size=\"%1.8fpt\">%i</text>\n",
   time2pixels(start), Yslot * SLOT_MULT + SLOT_HEIGHT - 1, text_size, cpu + 1);

}
