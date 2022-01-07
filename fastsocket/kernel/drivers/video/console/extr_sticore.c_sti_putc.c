
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_struct {int font_width; int font_height; int lock; int glob_cfg; int font_unpmv; TYPE_1__* font; } ;
struct sti_font_outptr {int member_0; } ;
struct sti_font_inptr {int dest_x; int dest_y; int bg_color; int fg_color; int index; int font_start_addr; } ;
typedef int s32 ;
struct TYPE_2__ {int raw; } ;


 int STI_CALL (int ,int *,struct sti_font_inptr*,struct sti_font_outptr*,int ) ;
 int STI_PTR (int ) ;
 int c_bg (struct sti_struct*,int) ;
 int c_fg (struct sti_struct*,int) ;
 int c_index (struct sti_struct*,int) ;
 int default_font_flags ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
sti_putc(struct sti_struct *sti, int c, int y, int x)
{
 struct sti_font_inptr inptr = {
  .font_start_addr= STI_PTR(sti->font->raw),
  .index = c_index(sti, c),
  .fg_color = c_fg(sti, c),
  .bg_color = c_bg(sti, c),
  .dest_x = x * sti->font_width,
  .dest_y = y * sti->font_height,
 };
 struct sti_font_outptr outptr = { 0, };
 s32 ret;
 unsigned long flags;

 do {
  spin_lock_irqsave(&sti->lock, flags);
  ret = STI_CALL(sti->font_unpmv, &default_font_flags,
   &inptr, &outptr, sti->glob_cfg);
  spin_unlock_irqrestore(&sti->lock, flags);
 } while (ret == 1);
}
