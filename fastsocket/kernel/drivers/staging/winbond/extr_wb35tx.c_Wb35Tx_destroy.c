
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_tx {scalar_t__ EP2vm_state; scalar_t__ EP4vm_state; scalar_t__ Tx2Urb; scalar_t__ Tx4Urb; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;


 scalar_t__ VM_STOP ;
 int msleep (int) ;
 int printk (char*) ;
 int usb_free_urb (scalar_t__) ;

void Wb35Tx_destroy(struct hw_data * pHwData)
{
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;


 do {
  msleep(10);
 } while( (pWb35Tx->EP2vm_state != VM_STOP) && (pWb35Tx->EP4vm_state != VM_STOP) );
 msleep(10);

 if (pWb35Tx->Tx4Urb)
  usb_free_urb( pWb35Tx->Tx4Urb );

 if (pWb35Tx->Tx2Urb)
  usb_free_urb( pWb35Tx->Tx2Urb );




}
