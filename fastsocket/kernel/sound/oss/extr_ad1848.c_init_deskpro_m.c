
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {int dummy; } ;


 int DDB (int ) ;
 unsigned char inb (int) ;
 int outb (int,int) ;
 int printk (char*) ;

__attribute__((used)) static int init_deskpro_m(struct address_info *hw_config)
{
 unsigned char tmp;

 if ((tmp = inb(0xc44)) == 0xff)
 {
  DDB(printk("init_deskpro_m: Dead port 0xc44\n"));
  return 0;
 }

 outb(0x10, 0xc44);
 outb(0x40, 0xc45);
 outb(0x00, 0xc46);
 outb(0xe8, 0xc47);
 outb(0x14, 0xc44);
 outb(0x40, 0xc45);
 outb(0x00, 0xc46);
 outb(0xe8, 0xc47);
 outb(0x10, 0xc44);

 return 1;
}
