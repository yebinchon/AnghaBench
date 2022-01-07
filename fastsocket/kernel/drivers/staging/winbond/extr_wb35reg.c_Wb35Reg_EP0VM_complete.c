
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_reg_queue {struct wb35_reg_queue* Next; } ;
struct wb35_reg {void* EP0vm_state; scalar_t__ EP0VM_status; int EP0VM_spin_lock; struct wb35_reg_queue* reg_first; struct wb35_reg_queue* reg_last; int RegFireCount; } ;
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct hw_data {int SurpriseRemove; struct wb35_reg reg; } ;


 void* VM_COMPLETED ;
 void* VM_STOP ;
 int Wb35Reg_EP0VM (struct hw_data*) ;
 int atomic_dec (int *) ;
 int kfree (struct wb35_reg_queue*) ;
 int printk (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (struct urb*) ;

void
Wb35Reg_EP0VM_complete(struct urb *urb)
{
 struct hw_data * pHwData = (struct hw_data *)urb->context;
 struct wb35_reg *reg = &pHwData->reg;
 struct wb35_reg_queue *reg_queue;



 reg->EP0vm_state = VM_COMPLETED;
 reg->EP0VM_status = urb->status;

 if (pHwData->SurpriseRemove) {
  reg->EP0vm_state = VM_STOP;
  atomic_dec(&reg->RegFireCount);
 } else {

  spin_lock_irq( &reg->EP0VM_spin_lock );
  reg_queue = reg->reg_first;
  if (reg_queue == reg->reg_last)
   reg->reg_last = ((void*)0);
  reg->reg_first = reg->reg_first->Next;
  spin_unlock_irq( &reg->EP0VM_spin_lock );

  if (reg->EP0VM_status) {



   reg->EP0vm_state = VM_STOP;
   pHwData->SurpriseRemove = 1;
  } else {



   Wb35Reg_EP0VM(pHwData);
  }

     kfree(reg_queue);
 }

 usb_free_urb(urb);
}
