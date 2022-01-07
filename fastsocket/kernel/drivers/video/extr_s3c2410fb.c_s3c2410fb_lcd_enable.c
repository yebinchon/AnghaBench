
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lcdcon1; } ;
struct s3c2410fb_info {scalar_t__ io; TYPE_1__ regs; } ;


 scalar_t__ S3C2410_LCDCON1 ;
 int S3C2410_LCDCON1_ENVID ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3c2410fb_lcd_enable(struct s3c2410fb_info *fbi, int enable)
{
 unsigned long flags;

 local_irq_save(flags);

 if (enable)
  fbi->regs.lcdcon1 |= S3C2410_LCDCON1_ENVID;
 else
  fbi->regs.lcdcon1 &= ~S3C2410_LCDCON1_ENVID;

 writel(fbi->regs.lcdcon1, fbi->io + S3C2410_LCDCON1);

 local_irq_restore(flags);
}
