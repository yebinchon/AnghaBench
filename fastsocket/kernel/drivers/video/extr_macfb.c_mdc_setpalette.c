
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_cmap_regs {int lut; int addr; } ;
struct fb_info {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 struct mdc_cmap_regs* nubus_slot_addr (int ) ;
 int nubus_writeb (unsigned char,int *) ;
 int video_slot ;

__attribute__((used)) static int mdc_setpalette(unsigned int regno, unsigned int red,
     unsigned int green, unsigned int blue,
     struct fb_info *info)
{
 volatile struct mdc_cmap_regs *cmap_regs =
  nubus_slot_addr(video_slot);

 unsigned char _red =red>>8;
 unsigned char _green=green>>8;
 unsigned char _blue =blue>>8;
 unsigned char _regno=regno;
 unsigned long flags;

 local_irq_save(flags);


 nubus_writeb(_regno, &cmap_regs->addr); nop();
 nubus_writeb(_red, &cmap_regs->lut); nop();
 nubus_writeb(_green, &cmap_regs->lut); nop();
 nubus_writeb(_blue, &cmap_regs->lut);

 local_irq_restore(flags);
 return 0;
}
