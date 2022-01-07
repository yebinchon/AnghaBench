
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int DACDelay ;


 int* MV300_reg ;
 int OUTB (int,unsigned int) ;
 int external_bitspercol ;
 int external_card_type ;
 int external_vgaiobase ;

__attribute__((used)) static int ext_setcolreg(unsigned int regno, unsigned int red,
    unsigned int green, unsigned int blue,
    unsigned int transp, struct fb_info *info)
{
 unsigned char colmask = (1 << external_bitspercol) - 1;

 if (!external_vgaiobase)
  return 1;

 switch (external_card_type) {
 case 128:
  OUTB(0x3c8, regno);
  DACDelay;
  OUTB(0x3c9, red & colmask);
  DACDelay;
  OUTB(0x3c9, green & colmask);
  DACDelay;
  OUTB(0x3c9, blue & colmask);
  DACDelay;
  return 0;

 case 129:
  OUTB((MV300_reg[regno] << 2) + 1, red);
  OUTB((MV300_reg[regno] << 2) + 1, green);
  OUTB((MV300_reg[regno] << 2) + 1, blue);
  return 0;

 default:
  return 1;
 }
}
