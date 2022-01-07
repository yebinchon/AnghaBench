
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; int line; struct TYPE_2__* next_line; } ;


 int absolute_lin ;
 TYPE_1__* curr_line ;
 int draw_line (scalar_t__,int ,int ,int,int ) ;
 scalar_t__ last_line ;
 int point ;
 int position ;
 scalar_t__ scr_vert ;
 int text_win ;
 int wclrtobot (int ) ;
 int wdeleteln (int ) ;
 int wmove (int ,scalar_t__,int ) ;

void
nextline()
{
 curr_line = curr_line->next_line;
 absolute_lin++;
 point = curr_line->line;
 position = 1;
 if (scr_vert == last_line)
 {
  wmove(text_win, 0,0);
  wdeleteln(text_win);
  wmove(text_win, last_line,0);
  wclrtobot(text_win);
  draw_line(last_line,0,point,1,curr_line->line_length);
 }
 else
  scr_vert++;
}
