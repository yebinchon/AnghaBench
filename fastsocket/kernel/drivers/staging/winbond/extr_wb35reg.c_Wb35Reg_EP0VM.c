
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wb35_reg_queue {int DIRECT; int VALUE; int * pBuffer; struct urb* urb; struct usb_ctrlrequest* pUsbReq; } ;
struct wb35_reg {int RegFireCount; int EP0vm_state; int EP0VM_spin_lock; struct wb35_reg_queue* reg_first; scalar_t__ SyncIoPause; } ;
struct usb_ctrlrequest {int wLength; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int udev; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;


 int GFP_ATOMIC ;
 int REG_DIRECTION (int ,struct wb35_reg_queue*) ;
 int VM_RUNNING ;
 int VM_STOP ;
 int Wb35Reg_EP0VM_complete ;
 int atomic_dec (int *) ;
 int cpu_to_le16 (int ) ;
 int printk (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_fill_control_urb (struct urb*,int ,int ,int *,int *,int ,int ,void*) ;
 int usb_submit_urb (struct urb*,int ) ;

void
Wb35Reg_EP0VM(struct hw_data * pHwData )
{
 struct wb35_reg *reg = &pHwData->reg;
 struct urb *urb;
 struct usb_ctrlrequest *dr;
 u32 * pBuffer;
 int ret = -1;
 struct wb35_reg_queue *reg_queue;


 if (reg->SyncIoPause)
  goto cleanup;

 if (pHwData->SurpriseRemove)
  goto cleanup;


 spin_lock_irq( &reg->EP0VM_spin_lock );
 reg_queue = reg->reg_first;
 spin_unlock_irq( &reg->EP0VM_spin_lock );

 if (!reg_queue)
  goto cleanup;


 urb = (struct urb *)reg_queue->urb;

 dr = reg_queue->pUsbReq;
 urb = reg_queue->urb;
 pBuffer = reg_queue->pBuffer;
 if (reg_queue->DIRECT == 1)
  pBuffer = &reg_queue->VALUE;

 usb_fill_control_urb( urb, pHwData->WbUsb.udev,
         REG_DIRECTION(pHwData->WbUsb.udev,reg_queue),
         (u8 *)dr,pBuffer,cpu_to_le16(dr->wLength),
         Wb35Reg_EP0VM_complete, (void*)pHwData);

 reg->EP0vm_state = VM_RUNNING;

 ret = usb_submit_urb(urb, GFP_ATOMIC);

 if (ret < 0) {



  goto cleanup;
 }

 return;

 cleanup:
 reg->EP0vm_state = VM_STOP;
 atomic_dec(&reg->RegFireCount);
}
