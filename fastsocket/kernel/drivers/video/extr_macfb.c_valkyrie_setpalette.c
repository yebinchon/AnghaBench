
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int lut; int addr; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 int nubus_writeb (unsigned int,int *) ;
 TYPE_1__* valkyrie_cmap_regs ;

__attribute__((used)) static int valkyrie_setpalette (unsigned int regno, unsigned int red,
    unsigned int green, unsigned int blue,
    struct fb_info *info)
{
 unsigned long flags;

 red >>= 8;
 green >>= 8;
 blue >>= 8;

 local_irq_save(flags);


 nubus_writeb(regno, &valkyrie_cmap_regs->addr);
 nop();


 nubus_writeb(red, &valkyrie_cmap_regs->lut);
 nop();
 nubus_writeb(green, &valkyrie_cmap_regs->lut);
 nop();
 nubus_writeb(blue, &valkyrie_cmap_regs->lut);

 local_irq_restore(flags);
 return 0;
}
