
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;
typedef int a ;


 int scr_readw (int*) ;
 int scr_writew (int,int ) ;
 int vga_can_do_color ;

__attribute__((used)) static void vgacon_invert_region(struct vc_data *c, u16 * p, int count)
{
 int col = vga_can_do_color;

 while (count--) {
  u16 a = scr_readw(p);
  if (col)
   a = ((a) & 0x88ff) | (((a) & 0x7000) >> 4) |
       (((a) & 0x0700) << 4);
  else
   a ^= ((a & 0x0700) == 0x0100) ? 0x7000 : 0x7700;
  scr_writew(a, p++);
 }
}
