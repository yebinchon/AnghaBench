
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int vc_rows; int vc_color; int vc_cols; int vc_origin; int vc_size_row; unsigned short vc_video_erase_char; } ;
struct TYPE_3__ {int topscan; } ;
struct TYPE_4__ {TYPE_1__ cset; } ;


 int SM_UP ;
 scalar_t__ logo_active ;
 int newport_clear_lines (int,int,int) ;
 int newport_putc (struct vc_data*,unsigned short,int,int) ;
 TYPE_2__* npregs ;
 unsigned short scr_readw (unsigned short*) ;
 int scr_writew (unsigned short,unsigned short*) ;
 int topscan ;

__attribute__((used)) static int newport_scroll(struct vc_data *vc, int t, int b, int dir,
     int lines)
{
 int count, x, y;
 unsigned short *s, *d;
 unsigned short chattr;

 logo_active = 0;

 if (t == 0 && b == vc->vc_rows) {
  if (dir == SM_UP) {
   topscan = (topscan + (lines << 4)) & 0x3ff;
   newport_clear_lines(vc->vc_rows - lines,
         vc->vc_rows - 1,
         (vc->vc_color & 0xf0) >> 4);
  } else {
   topscan = (topscan + (-lines << 4)) & 0x3ff;
   newport_clear_lines(0, lines - 1,
         (vc->vc_color & 0xf0) >> 4);
  }
  npregs->cset.topscan = (topscan - 1) & 0x3ff;
  return 0;
 }

 count = (b - t - lines) * vc->vc_cols;
 if (dir == SM_UP) {
  x = 0;
  y = t;
  s = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * (t + lines));
  d = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * t);
  while (count--) {
   chattr = scr_readw(s++);
   if (chattr != scr_readw(d)) {
    newport_putc(vc, chattr, y, x);
    scr_writew(chattr, d);
   }
   d++;
   if (++x == vc->vc_cols) {
    x = 0;
    y++;
   }
  }
  d = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * (b - lines));
  x = 0;
  y = b - lines;
  for (count = 0; count < (lines * vc->vc_cols); count++) {
   if (scr_readw(d) != vc->vc_video_erase_char) {
    newport_putc(vc, vc->vc_video_erase_char,
          y, x);
    scr_writew(vc->vc_video_erase_char, d);
   }
   d++;
   if (++x == vc->vc_cols) {
    x = 0;
    y++;
   }
  }
 } else {
  x = vc->vc_cols - 1;
  y = b - 1;
  s = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * (b - lines) - 2);
  d = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * b - 2);
  while (count--) {
   chattr = scr_readw(s--);
   if (chattr != scr_readw(d)) {
    newport_putc(vc, chattr, y, x);
    scr_writew(chattr, d);
   }
   d--;
   if (x-- == 0) {
    x = vc->vc_cols - 1;
    y--;
   }
  }
  d = (unsigned short *) (vc->vc_origin +
     vc->vc_size_row * t);
  x = 0;
  y = t;
  for (count = 0; count < (lines * vc->vc_cols); count++) {
   if (scr_readw(d) != vc->vc_video_erase_char) {
    newport_putc(vc, vc->vc_video_erase_char,
          y, x);
    scr_writew(vc->vc_video_erase_char, d);
   }
   d++;
   if (++x == vc->vc_cols) {
    x = 0;
    y++;
   }
  }
 }
 return 1;
}
