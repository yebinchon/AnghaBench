
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {unsigned int ramdac_ctrl; unsigned int ramdac_powerdown; } ;


 unsigned int cyber2000fb_readb (int,struct cfb_info*) ;
 int cyber2000fb_writeb (unsigned int,int,struct cfb_info*) ;

__attribute__((used)) static void cyber2000fb_write_ramdac_ctrl(struct cfb_info *cfb)
{
 unsigned int i;
 unsigned int val = cfb->ramdac_ctrl | cfb->ramdac_powerdown;

 cyber2000fb_writeb(0x56, 0x3ce, cfb);
 i = cyber2000fb_readb(0x3cf, cfb);
 cyber2000fb_writeb(i | 4, 0x3cf, cfb);
 cyber2000fb_writeb(val, 0x3c6, cfb);
 cyber2000fb_writeb(i, 0x3cf, cfb);
}
