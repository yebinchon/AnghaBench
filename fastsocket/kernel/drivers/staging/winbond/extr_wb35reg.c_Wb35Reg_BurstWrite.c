
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wb35_reg_queue {int DIRECT; int INDEX; struct wb35_reg_queue* Next; struct urb* urb; struct usb_ctrlrequest* pUsbReq; int * pBuffer; } ;
struct wb35_reg {int EP0VM_spin_lock; struct wb35_reg_queue* reg_last; struct wb35_reg_queue* reg_first; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct urb {int dummy; } ;
struct hw_data {scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;


 int GFP_ATOMIC ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int Wb35Reg_EP0VM_start (struct hw_data*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wb35_reg_queue*) ;
 struct wb35_reg_queue* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (struct urb*) ;

unsigned char
Wb35Reg_BurstWrite(struct hw_data * pHwData, u16 RegisterNo, u32 * pRegisterData, u8 NumberOfData, u8 Flag)
{
 struct wb35_reg *reg = &pHwData->reg;
 struct urb *urb = ((void*)0);
 struct wb35_reg_queue *reg_queue = ((void*)0);
 u16 UrbSize;
 struct usb_ctrlrequest *dr;
 u16 i, DataSize = NumberOfData*4;


 if (pHwData->SurpriseRemove)
  return 0;


 UrbSize = sizeof(struct wb35_reg_queue) + DataSize + sizeof(struct usb_ctrlrequest);
 reg_queue = kzalloc(UrbSize, GFP_ATOMIC);
 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if( urb && reg_queue ) {
  reg_queue->DIRECT = 2;
  reg_queue->INDEX = RegisterNo;
  reg_queue->pBuffer = (u32 *)((u8 *)reg_queue + sizeof(struct wb35_reg_queue));
  memcpy( reg_queue->pBuffer, pRegisterData, DataSize );

  for( i=0; i<NumberOfData ; i++ )
   reg_queue->pBuffer[i] = cpu_to_le32( reg_queue->pBuffer[i] );

  dr = (struct usb_ctrlrequest *)((u8 *)reg_queue + sizeof(struct wb35_reg_queue) + DataSize);
  dr->bRequestType = USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE;
  dr->bRequest = 0x04;
  dr->wValue = cpu_to_le16( Flag );
  dr->wIndex = cpu_to_le16( RegisterNo );
  dr->wLength = cpu_to_le16( DataSize );
  reg_queue->Next = ((void*)0);
  reg_queue->pUsbReq = dr;
  reg_queue->urb = urb;

  spin_lock_irq( &reg->EP0VM_spin_lock );
  if (reg->reg_first == ((void*)0))
   reg->reg_first = reg_queue;
  else
   reg->reg_last->Next = reg_queue;
  reg->reg_last = reg_queue;

  spin_unlock_irq( &reg->EP0VM_spin_lock );


  Wb35Reg_EP0VM_start(pHwData);

  return 1;
 } else {
  if (urb)
   usb_free_urb(urb);
  if (reg_queue)
   kfree(reg_queue);
  return 0;
 }
   return 0;
}
