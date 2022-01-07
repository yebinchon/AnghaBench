
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; } ;


 int COLS ;
 TYPE_1__* curr_line ;
 scalar_t__ ee_chinese ;
 int horiz_offset ;
 int last_col ;
 int max (int ,int) ;
 int midscreen (int ,int*) ;
 int* point ;
 int position ;
 int scr_horz ;
 int scr_pos ;
 int scr_vert ;
 scalar_t__ tabshift (int) ;
 int text_win ;
 int wmove (int ,int ,int) ;

void
find_pos()
{
 scr_horz = 0;
 position = 1;
 while ((scr_horz < scr_pos) && (position < curr_line->line_length))
 {
  if (*point == 9)
   scr_horz += tabshift(scr_horz);
  else if (*point < ' ')
   scr_horz += 2;
  else if ((ee_chinese) && (*point > 127) &&
      ((curr_line->line_length - position) >= 2))
  {
   scr_horz += 2;
   point++;
   position++;
  }
  else
   scr_horz++;
  position++;
  point++;
 }
 if ((scr_horz - horiz_offset) > last_col)
 {
  horiz_offset = (scr_horz - (scr_horz % 8)) - (COLS - 8);
  midscreen(scr_vert, point);
 }
 else if (scr_horz < horiz_offset)
 {
  horiz_offset = max(0, (scr_horz - (scr_horz % 8)));
  midscreen(scr_vert, point);
 }
 wmove(text_win, scr_vert, (scr_horz - horiz_offset));
}
