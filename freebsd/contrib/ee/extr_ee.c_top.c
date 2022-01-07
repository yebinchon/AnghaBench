
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; struct TYPE_2__* prev_line; } ;


 int absolute_lin ;
 TYPE_1__* curr_line ;
 scalar_t__ horiz_offset ;
 int midscreen (int ,int ) ;
 int point ;
 int position ;
 int scr_horz ;
 int scr_pos ;

void
top()
{
 while (curr_line->prev_line != ((void*)0))
 {
  curr_line = curr_line->prev_line;
  absolute_lin--;
 }
 point = curr_line->line;
 if (horiz_offset)
  horiz_offset = 0;
 position = 1;
 midscreen(0, point);
 scr_pos = scr_horz;
}
