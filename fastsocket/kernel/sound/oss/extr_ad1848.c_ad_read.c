
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char MCE_bit; int base; } ;
typedef TYPE_1__ ad1848_info ;


 int inb (int ) ;
 int io_Index_Addr (TYPE_1__*) ;
 int io_Indexed_Data (TYPE_1__*) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static int ad_read(ad1848_info * devc, int reg)
{
 int x;
 int timeout = 900000;

 while (timeout > 0 && inb(devc->base) == 0x80)
  timeout--;

 if(reg < 32)
 {
  outb(((unsigned char) (reg & 0xff) | devc->MCE_bit), io_Index_Addr(devc));
  x = inb(io_Indexed_Data(devc));
 }
 else
 {
  int xreg, xra;

  xreg = (reg & 0xff) - 32;
  xra = (((xreg & 0x0f) << 4) & 0xf0) | 0x08 | ((xreg & 0x10) >> 2);
  outb(((unsigned char) (23 & 0xff) | devc->MCE_bit), io_Index_Addr(devc));
  outb(((unsigned char) (xra & 0xff)), io_Indexed_Data(devc));
  x = inb(io_Indexed_Data(devc));
 }

 return x;
}
