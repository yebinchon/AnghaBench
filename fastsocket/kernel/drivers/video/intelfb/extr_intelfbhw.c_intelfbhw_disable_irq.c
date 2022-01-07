
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pan_offset; scalar_t__ pan_display; } ;
struct intelfb_info {TYPE_1__* pdev; int int_lock; TYPE_2__ vsync; int irq_flags; } ;
struct TYPE_3__ {int irq; } ;


 int DSPABASE ;
 int HWSTAM ;
 int IER ;
 int IIR ;
 int IMR ;
 int INREG16 (int ) ;
 int OUTREG (int ,int ) ;
 int OUTREG16 (int ,int) ;
 int free_irq (int ,struct intelfb_info*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void intelfbhw_disable_irq(struct intelfb_info *dinfo)
{
 if (test_and_clear_bit(0, &dinfo->irq_flags)) {
  if (dinfo->vsync.pan_display) {
   dinfo->vsync.pan_display = 0;
   OUTREG(DSPABASE, dinfo->vsync.pan_offset);
  }
  spin_lock_irq(&dinfo->int_lock);
  OUTREG16(HWSTAM, 0xffff);
  OUTREG16(IMR, 0xffff);
  OUTREG16(IER, 0x0);

  OUTREG16(IIR, INREG16(IIR));
  spin_unlock_irq(&dinfo->int_lock);

  free_irq(dinfo->pdev->irq, dinfo);
 }
}
