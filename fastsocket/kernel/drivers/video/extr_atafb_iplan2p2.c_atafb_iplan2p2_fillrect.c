
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u8 ;
typedef int u32 ;
struct fb_info {scalar_t__ screen_base; } ;


 int BPL ;
 int expand16_col2mask (int,int*) ;
 int expand8_col2mask (int,int*) ;
 int* fill16_col (int*,int,int*) ;
 int fill8_col (int *,int*) ;

void atafb_iplan2p2_fillrect(struct fb_info *info, u_long next_line, u32 color,
                             int sy, int sx, int height, int width)
{
 u32 *dest;
 int rows, i;
 u32 cval[4];

 dest = (u32 *)(info->screen_base + sy * next_line + (sx & ~15) / (8 / BPL));
 if (sx & 15) {
  u8 *dest8 = (u8 *)dest + 1;

  expand8_col2mask(color, cval);

  for (i = height; i; i--) {
   fill8_col(dest8, cval);
   dest8 += next_line;
  }
  dest += BPL / 2;
  width -= 8;
 }

 expand16_col2mask(color, cval);
 rows = width >> 4;
 if (rows) {
  u32 *d = dest;
  u32 off = next_line - rows * BPL * 2;
  for (i = height; i; i--) {
   d = fill16_col(d, rows, cval);
   d = (u32 *)((long)d + off);
  }
  dest += rows * BPL / 2;
  width &= 15;
 }

 if (width) {
  u8 *dest8 = (u8 *)dest;

  expand8_col2mask(color, cval);

  for (i = height; i; i--) {
   fill8_col(dest8, cval);
   dest8 += next_line;
  }
 }
}
