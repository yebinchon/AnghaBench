
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
typedef TYPE_1__ sb_devc ;


 int DDB (int ) ;
 int inb (int) ;
 int outb (int,int) ;
 int printk (char*) ;
 scalar_t__ sb_dsp_reset (TYPE_1__*) ;

__attribute__((used)) static void relocate_ess1688(sb_devc * devc)
{
 unsigned char bits;

 switch (devc->base)
 {
  case 0x220:
   bits = 0x04;
   break;
  case 0x230:
   bits = 0x05;
   break;
  case 0x240:
   bits = 0x06;
   break;
  case 0x250:
   bits = 0x07;
   break;
  default:
   return;
 }

 DDB(printk("Doing ESS1688 address selection\n"));







 inb(0x229);
 inb(0x229);
 inb(0x229);


 inb(0x22b);
 inb(0x229);
 inb(0x22b);
 inb(0x229);
 inb(0x229);
 inb(0x22b);
 inb(0x229);


 inb(devc->base);
 if (sb_dsp_reset(devc))
  return;
}
