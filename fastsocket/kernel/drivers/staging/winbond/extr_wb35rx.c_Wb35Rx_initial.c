
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_rx {int RxUrb; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;


 int GFP_ATOMIC ;
 int Wb35Rx_reset_descriptor (struct hw_data*) ;
 int usb_alloc_urb (int ,int ) ;

unsigned char Wb35Rx_initial(struct hw_data * pHwData)
{
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;


 Wb35Rx_reset_descriptor( pHwData );

 pWb35Rx->RxUrb = usb_alloc_urb(0, GFP_ATOMIC);
 return (!!pWb35Rx->RxUrb);
}
