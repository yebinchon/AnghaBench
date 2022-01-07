
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct intelfb_info {int int_lock; TYPE_3__* info; int irq_flags; TYPE_1__* pdev; } ;
struct TYPE_5__ {int vmode; } ;
struct TYPE_6__ {TYPE_2__ var; } ;
struct TYPE_4__ {int irq; } ;


 int DBG_MSG (char*,int) ;
 int EINVAL ;
 int FB_VMODE_INTERLACED ;
 int HWSTAM ;
 int IER ;
 int IMR ;
 int INREG16 (int ) ;
 int IRQF_SHARED ;
 int OUTREG16 (int ,int) ;
 int PIPE_A_EVENT_INTERRUPT ;
 int VSYNC_PIPE_A_INTERRUPT ;
 int clear_bit (int ,int *) ;
 int intelfbhw_irq ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct intelfb_info*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;

int intelfbhw_enable_irq(struct intelfb_info *dinfo)
{
 u16 tmp;
 if (!test_and_set_bit(0, &dinfo->irq_flags)) {
  if (request_irq(dinfo->pdev->irq, intelfbhw_irq, IRQF_SHARED,
    "intelfb", dinfo)) {
   clear_bit(0, &dinfo->irq_flags);
   return -EINVAL;
  }

  spin_lock_irq(&dinfo->int_lock);
  OUTREG16(HWSTAM, 0xfffe);
  OUTREG16(IMR, 0);
 } else
  spin_lock_irq(&dinfo->int_lock);

 if (dinfo->info->var.vmode & FB_VMODE_INTERLACED)
  tmp = PIPE_A_EVENT_INTERRUPT;
 else
  tmp = VSYNC_PIPE_A_INTERRUPT;
 if (tmp != INREG16(IER)) {
  DBG_MSG("changing IER to 0x%X\n", tmp);
  OUTREG16(IER, tmp);
 }

 spin_unlock_irq(&dinfo->int_lock);
 return 0;
}
