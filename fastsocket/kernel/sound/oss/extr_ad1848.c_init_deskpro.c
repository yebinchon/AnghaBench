
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {int io_base; } ;


 int DDB (int ) ;
 int inb (int) ;
 int outb (int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int init_deskpro(struct address_info *hw_config)
{
 unsigned char tmp;

 if ((tmp = inb(0xc44)) == 0xff)
 {
  DDB(printk("init_deskpro: Dead port 0xc44\n"));
  return 0;
 }
 outb((tmp | 0x04), 0xc44);
 if (inb(0xc44) != 0x04)
 {
  DDB(printk("init_deskpro: Invalid bank1 signature in port 0xc44\n"));
  return 0;
 }
 tmp = 0x58;

 switch (hw_config->io_base)
 {
  case 0x530:
   tmp |= 0x00;
   break;
  case 0x604:
   tmp |= 0x01;
   break;
  case 0xf40:
   tmp |= 0x02;
   break;
  case 0xe80:
   tmp |= 0x03;
   break;
  default:
   DDB(printk("init_deskpro: Invalid MSS port %x\n", hw_config->io_base));
   return 0;
 }
 outb((tmp & ~0x04), 0xc44);
 outb((tmp & ~0x04), 0xc44);
 outb((0x88), 0xc45);
 outb((tmp | 0x04), 0xc44);
 outb((0x10), 0xc45);
 outb((tmp & ~0x04), 0xc44);
 outb((0x03), 0xc46);
 outb((tmp | 0x04), 0xc44);
 outb((0x11), 0xc46);
 outb((tmp & ~0x04), 0xc44);
 outb((0x7c), 0xc47);
 outb((tmp | 0x04), 0xc44);
 outb((0x00), 0xc47);
 outb((0x80), 0xc6f);





 return 1;
}
