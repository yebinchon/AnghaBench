
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fb_tilecursor {int sx; int sy; int shape; int mode; } ;
struct TYPE_2__ {int xoffset; int yoffset; int xres_virtual; } ;
struct fb_info {TYPE_1__ var; } ;





 int FB_TILE_CURSOR_NONE ;


 int svga_wcrt_mask (int,int,int) ;
 int vga_wcrt (int *,int,int) ;

void svga_tilecursor(struct fb_info *info, struct fb_tilecursor *cursor)
{
 u8 cs = 0x0d;
 u8 ce = 0x0e;
 u16 pos = cursor->sx + (info->var.xoffset / 8)
  + (cursor->sy + (info->var.yoffset / 16))
     * (info->var.xres_virtual / 8);

 if (! cursor -> mode)
  return;

 svga_wcrt_mask(0x0A, 0x20, 0x20);

 if (cursor -> shape == FB_TILE_CURSOR_NONE)
  return;

 switch (cursor -> shape) {
 case 128:
  cs = 0x0d;
  break;
 case 130:
  cs = 0x09;
  break;
 case 131:
  cs = 0x07;
  break;
 case 129:
  cs = 0x05;
  break;
 case 132:
  cs = 0x01;
  break;
 }


 vga_wcrt(((void*)0), 0x0E, pos >> 8);
 vga_wcrt(((void*)0), 0x0F, pos & 0xFF);

 vga_wcrt(((void*)0), 0x0B, ce);
 vga_wcrt(((void*)0), 0x0A, cs);
}
