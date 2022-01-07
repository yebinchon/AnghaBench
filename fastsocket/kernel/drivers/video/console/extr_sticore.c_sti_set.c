
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sti_struct {int lock; int glob_cfg; int block_move; } ;
struct sti_blkmv_outptr {int member_0; } ;
struct sti_blkmv_inptr {int src_x; int src_y; int dest_x; int dest_y; int width; int height; int bg_color; int fg_color; } ;
typedef int s32 ;


 int STI_CALL (int ,int *,struct sti_blkmv_inptr*,struct sti_blkmv_outptr*,int ) ;
 int clear_blkmv_flags ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
sti_set(struct sti_struct *sti, int src_y, int src_x,
 int height, int width, u8 color)
{
 struct sti_blkmv_inptr inptr = {
  .fg_color = color,
  .bg_color = color,
  .src_x = src_x,
  .src_y = src_y,
  .dest_x = src_x,
  .dest_y = src_y,
  .width = width,
  .height = height,
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
