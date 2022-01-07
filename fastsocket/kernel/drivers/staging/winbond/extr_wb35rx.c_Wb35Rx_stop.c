
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_rx {scalar_t__ EP3vm_state; int RxUrb; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;


 scalar_t__ VM_RUNNING ;
 int printk (char*) ;
 int usb_unlink_urb (int ) ;

void Wb35Rx_stop(struct hw_data * pHwData)
{
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;


 if (pWb35Rx->EP3vm_state == VM_RUNNING) {
  usb_unlink_urb( pWb35Rx->RxUrb );



 }
}
