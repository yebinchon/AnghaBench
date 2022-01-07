
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_struct {int font_width; int font_height; int lock; int glob_cfg; int block_move; } ;
struct sti_blkmv_outptr {int member_0; } ;
struct sti_blkmv_inptr {int src_x; int src_y; int dest_x; int dest_y; int width; int height; int bg_color; int fg_color; } ;
typedef int s32 ;


 int STI_CALL (int ,int *,struct sti_blkmv_inptr*,struct sti_blkmv_outptr*,int ) ;
 int c_bg (struct sti_struct*,int) ;
 int c_fg (struct sti_struct*,int) ;
 int clear_blkmv_flags ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
sti_clear(struct sti_struct *sti, int src_y, int src_x,
   int height, int width, int c)
{
 struct sti_blkmv_inptr inptr = {
  .fg_color = c_fg(sti, c),
  .bg_color = c_bg(sti, c),
  .src_x = src_x * sti->font_width,
  .src_y = src_y * sti->font_height,
  .dest_x = src_x * sti->font_width,
  .dest_y = src_y * sti->font_height,
  .width = width * sti->font_width,
  .height = height* sti->font_height,
 };
 struct sti_blkmv_outptr outptr = { 0, };
 s32 ret;
 unsigned long flags;

 do {
  spin_lock_irqsave(&sti->lock, flags);
  ret = STI_CALL(sti->block_move, &clear_blkmv_flags,
   &inptr, &outptr, sti->glob_cfg);
  spin_unlock_irqrestore(&sti->lock, flags);
 } while (ret == 1);
}
