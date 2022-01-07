
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_reg_queue {struct urb* urb; struct wb35_reg_queue* Next; } ;
struct wb35_reg {scalar_t__ EP0vm_state; int EP0VM_spin_lock; struct wb35_reg_queue* reg_first; struct wb35_reg_queue* reg_last; } ;
struct urb {int dummy; } ;
struct hw_data {struct wb35_reg reg; } ;


 int Uxx_power_off_procedure (struct hw_data*) ;
 scalar_t__ VM_STOP ;
 int kfree (struct wb35_reg_queue*) ;
 int msleep (int) ;
 int printk (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (struct urb*) ;

void
Wb35Reg_destroy(struct hw_data * pHwData)
{
 struct wb35_reg *reg = &pHwData->reg;
 struct urb *urb;
 struct wb35_reg_queue *reg_queue;


 Uxx_power_off_procedure(pHwData);


 do {
  msleep(10);
 } while (reg->EP0vm_state != VM_STOP);
 msleep(10);


 spin_lock_irq( &reg->EP0VM_spin_lock );
 reg_queue = reg->reg_first;
 while (reg_queue) {
  if (reg_queue == reg->reg_last)
   reg->reg_last = ((void*)0);
  reg->reg_first = reg->reg_first->Next;

  urb = reg_queue->urb;
  spin_unlock_irq( &reg->EP0VM_spin_lock );
  if (urb) {
   usb_free_urb(urb);
   kfree(reg_queue);
  } else {



  }
  spin_lock_irq( &reg->EP0VM_spin_lock );

  reg_queue = reg->reg_first;
 }
 spin_unlock_irq( &reg->EP0VM_spin_lock );
}
