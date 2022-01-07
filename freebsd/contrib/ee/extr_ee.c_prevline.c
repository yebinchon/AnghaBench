
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; int line; struct TYPE_2__* prev_line; } ;


 int absolute_lin ;
 TYPE_1__* curr_line ;
 int draw_line (int ,int ,int ,int,int) ;
 int point ;
 int position ;
 scalar_t__ scr_vert ;
 int text_win ;
 int winsertln (int ) ;

void
prevline()
{
 curr_line = curr_line->prev_line;
 absolute_lin--;
 point = curr_line->line;
 position = 1;
 if (scr_vert == 0)
 {
  winsertln(text_win);
  draw_line(0,0,point,1,curr_line->line_length);
 }
 else
  scr_vert--;
 while (position < curr_line->line_length)
 {
  position++;
  point++;
 }
}
