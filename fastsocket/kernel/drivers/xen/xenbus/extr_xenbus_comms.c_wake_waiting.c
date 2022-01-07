
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int probe_work ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;
 int xb_waitq ;
 int xenstored_ready ;

__attribute__((used)) static irqreturn_t wake_waiting(int irq, void *unused)
{
 if (unlikely(xenstored_ready == 0)) {
  xenstored_ready = 1;
  schedule_work(&probe_work);
 }

 wake_up(&xb_waitq);
 return IRQ_HANDLED;
}
