
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ var; } ;
struct fb_fillrect {scalar_t__ rop; size_t color; int height; int width; int dy; int dx; } ;


 int HD64461_BBTMDR ;
 int HD64461_BBTROPR ;
 int HD64461_GRSCR ;
 scalar_t__ ROP_COPY ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int fb_writew (int,int ) ;
 int hitfb_accel_set_dest (int,int ,int ,int ,int ) ;
 int hitfb_accel_start (int) ;
 int hitfb_accel_wait () ;

__attribute__((used)) static void hitfb_fillrect(struct fb_info *p, const struct fb_fillrect *rect)
{
 if (rect->rop != ROP_COPY)
  cfb_fillrect(p, rect);
 else {
  hitfb_accel_wait();
  fb_writew(0x00f0, HD64461_BBTROPR);
  fb_writew(16, HD64461_BBTMDR);

  if (p->var.bits_per_pixel == 16) {
   fb_writew(((u32 *) (p->pseudo_palette))[rect->color],
      HD64461_GRSCR);
   hitfb_accel_set_dest(1, rect->dx, rect->dy, rect->width,
          rect->height);
   hitfb_accel_start(1);
  } else {
   fb_writew(rect->color, HD64461_GRSCR);
   hitfb_accel_set_dest(0, rect->dx, rect->dy, rect->width,
          rect->height);
   hitfb_accel_start(0);
  }
 }
}
