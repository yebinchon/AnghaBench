
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text {unsigned char* line; struct text* next_line; int line_length; } ;


 struct text* curr_line ;
 int draw_line (int,int ,unsigned char*,int,int ) ;
 scalar_t__ horiz_offset ;
 int last_line ;
 scalar_t__ scr_horz ;
 int scr_vert ;
 int text_win ;
 int wclrtobot (int ) ;
 int wmove (int ,int,scalar_t__) ;

void
draw_screen()
{
 struct text *temp_line;
 unsigned char *line_out;
 int temp_vert;

 temp_line = curr_line;
 temp_vert = scr_vert;
 wclrtobot(text_win);
 while ((temp_line != ((void*)0)) && (temp_vert <= last_line))
 {
  line_out = temp_line->line;
  draw_line(temp_vert, 0, line_out, 1, temp_line->line_length);
  temp_vert++;
  temp_line = temp_line->next_line;
 }
 wmove(text_win, temp_vert, 0);
 wmove(text_win, scr_vert, (scr_horz - horiz_offset));
}
