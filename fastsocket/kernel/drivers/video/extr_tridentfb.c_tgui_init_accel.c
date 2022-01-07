
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {scalar_t__ io_virt; } ;


 int fb_writew (unsigned char,scalar_t__) ;
 int point (int,int) ;
 int writemmr (struct tridentfb_par*,int,int ) ;

__attribute__((used)) static void tgui_init_accel(struct tridentfb_par *par, int pitch, int bpp)
{
 unsigned char x = bpp == 24 ? 3 : (bpp >> 4);


 writemmr(par, 0x2148, 0);
 writemmr(par, 0x214C, point(4095, 2047));

 switch ((pitch * bpp) / 8) {
 case 8192:
 case 512:
  x |= 0x00;
  break;
 case 1024:
  x |= 0x04;
  break;
 case 2048:
  x |= 0x08;
  break;
 case 4096:
  x |= 0x0C;
  break;
 }

 fb_writew(x, par->io_virt + 0x2122);
}
