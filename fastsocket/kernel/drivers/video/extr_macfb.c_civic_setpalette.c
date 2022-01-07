
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_4__ {int lut; int status2; scalar_t__ vbl_addr; int addr; } ;


 scalar_t__ CIVIC_VBL_OFFSET ;
 TYPE_2__* civic_cmap_regs ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 void* nubus_readb (int *) ;
 unsigned long* nubus_readl (scalar_t__) ;
 int nubus_writeb (unsigned char,int *) ;
 int usleep (int) ;

__attribute__((used)) static int civic_setpalette (unsigned int regno, unsigned int red,
        unsigned int green, unsigned int blue,
        struct fb_info *info)
{
 static int lastreg = -1;
 unsigned long flags;
 int clut_status;

 if (info->var.bits_per_pixel > 8) return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;

 local_irq_save(flags);




 nubus_writeb(regno, &civic_cmap_regs->addr); nop();
 clut_status = nubus_readb(&civic_cmap_regs->status2);

 if ((clut_status & 0x0008) == 0)
 {
  nubus_writeb( red, &civic_cmap_regs->lut); nop();
  nubus_writeb(green, &civic_cmap_regs->lut); nop();
  nubus_writeb( blue, &civic_cmap_regs->lut); nop();
  nubus_writeb( 0x00, &civic_cmap_regs->lut); nop();
 }
 else
 {
  unsigned char junk;

  junk = nubus_readb(&civic_cmap_regs->lut); nop();
  junk = nubus_readb(&civic_cmap_regs->lut); nop();
  junk = nubus_readb(&civic_cmap_regs->lut); nop();
  junk = nubus_readb(&civic_cmap_regs->lut); nop();

  if ((clut_status & 0x000D) != 0)
  {
   nubus_writeb(0x00, &civic_cmap_regs->lut); nop();
   nubus_writeb(0x00, &civic_cmap_regs->lut); nop();
  }

  nubus_writeb( red, &civic_cmap_regs->lut); nop();
  nubus_writeb(green, &civic_cmap_regs->lut); nop();
  nubus_writeb( blue, &civic_cmap_regs->lut); nop();
  nubus_writeb( junk, &civic_cmap_regs->lut); nop();
 }

 local_irq_restore(flags);
 lastreg = regno;
 return 0;
}
