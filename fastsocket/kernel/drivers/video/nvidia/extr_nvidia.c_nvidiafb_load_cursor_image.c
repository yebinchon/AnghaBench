
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvidia_par {int * CURSOR; } ;


 int MAX_CURS ;
 int NV_WR32 (int *,int ,int) ;
 int reverse_order (int*) ;

__attribute__((used)) static void nvidiafb_load_cursor_image(struct nvidia_par *par, u8 * data8,
           u16 bg, u16 fg, u32 w, u32 h)
{
 u32 *data = (u32 *) data8;
 int i, j, k = 0;
 u32 b, tmp;

 w = (w + 1) & ~1;

 for (i = 0; i < h; i++) {
  b = *data++;
  reverse_order(&b);

  for (j = 0; j < w / 2; j++) {
   tmp = 0;






   tmp = (b & 1) ? fg : bg;
   b >>= 1;
   tmp |= (b & 1) ? fg << 16 : bg << 16;
   b >>= 1;

   NV_WR32(&par->CURSOR[k++], 0, tmp);
  }
  k += (MAX_CURS - w) / 2;
 }
}
