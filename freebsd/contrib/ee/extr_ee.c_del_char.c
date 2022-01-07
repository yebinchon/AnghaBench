
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line_length; } ;


 int TRUE ;
 TYPE_1__* curr_line ;
 int delete (int ) ;
 scalar_t__ ee_chinese ;
 int in ;
 int* point ;
 scalar_t__ position ;
 int right (int ) ;
 int scanline (int*) ;

void
del_char()
{
 in = 8;
 if (position < curr_line->line_length)
 {
  if ((ee_chinese) && (*point > 127) &&
      ((curr_line->line_length - position) >= 2))
  {
   point++;
   position++;
  }
  position++;
  point++;
  scanline(point);
  delete(TRUE);
 }
 else
 {
  right(TRUE);
  delete(TRUE);
 }
}
