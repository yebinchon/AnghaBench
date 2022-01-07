
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_rx {scalar_t__ EP3vm_state; scalar_t__ RxUrb; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;


 scalar_t__ VM_STOP ;
 int msleep (int) ;
 int printk (char*) ;
 int usb_free_urb (scalar_t__) ;

void Wb35Rx_destroy(struct hw_data * pHwData)
{
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;

 do {
  msleep(10);
 } while (pWb35Rx->EP3vm_state != VM_STOP);
 msleep(10);

 if (pWb35Rx->RxUrb)
  usb_free_urb( pWb35Rx->RxUrb );



}
