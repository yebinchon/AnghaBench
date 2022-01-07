
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_tx {scalar_t__ EP2vm_state; scalar_t__ EP4vm_state; int Tx4Urb; int Tx2Urb; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;


 scalar_t__ VM_RUNNING ;
 int printk (char*) ;
 int usb_unlink_urb (int ) ;

void Wb35Tx_stop(struct hw_data * pHwData)
{
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;


 if (pWb35Tx->EP2vm_state == VM_RUNNING)
  usb_unlink_urb( pWb35Tx->Tx2Urb );





 if (pWb35Tx->EP4vm_state == VM_RUNNING)
  usb_unlink_urb( pWb35Tx->Tx4Urb );



}
