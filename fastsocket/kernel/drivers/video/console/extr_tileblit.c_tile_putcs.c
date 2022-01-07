
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vc_data {scalar_t__ vc_hi_font_mask; } ;
struct fb_tileblit {int sx; int sy; int width; int height; int fg; int bg; int length; scalar_t__* indices; } ;
struct fb_info {TYPE_1__* tileops; int pixmap; } ;
struct TYPE_2__ {int (* fb_tileblit ) (struct fb_info*,struct fb_tileblit*) ;} ;


 scalar_t__ fb_get_buffer_offset (struct fb_info*,int *,int) ;
 unsigned short scr_readw (int ) ;
 int stub1 (struct fb_info*,struct fb_tileblit*) ;

__attribute__((used)) static void tile_putcs(struct vc_data *vc, struct fb_info *info,
         const unsigned short *s, int count, int yy, int xx,
         int fg, int bg)
{
 struct fb_tileblit blit;
 unsigned short charmask = vc->vc_hi_font_mask ? 0x1ff : 0xff;
 int size = sizeof(u32) * count, i;

 blit.sx = xx;
 blit.sy = yy;
 blit.width = count;
 blit.height = 1;
 blit.fg = fg;
 blit.bg = bg;
 blit.length = count;
 blit.indices = (u32 *) fb_get_buffer_offset(info, &info->pixmap, size);
 for (i = 0; i < count; i++)
  blit.indices[i] = (u32)(scr_readw(s++) & charmask);

 info->tileops->fb_tileblit(info, &blit);
}
