
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100fb_info {int ctrlr_wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LCCR0 ;
 int LCCR0_LDM ;
 unsigned int LCSR ;
 unsigned int LCSR_LDD ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sa1100fb_handle_irq(int irq, void *dev_id)
{
 struct sa1100fb_info *fbi = dev_id;
 unsigned int lcsr = LCSR;

 if (lcsr & LCSR_LDD) {
  LCCR0 |= LCCR0_LDM;
  wake_up(&fbi->ctrlr_wait);
 }

 LCSR = lcsr;
 return IRQ_HANDLED;
}
