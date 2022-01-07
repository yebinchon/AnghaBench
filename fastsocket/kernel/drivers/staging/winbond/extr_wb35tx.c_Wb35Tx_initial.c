
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_tx {void* Tx4Urb; void* Tx2Urb; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;


 int GFP_ATOMIC ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;

unsigned char Wb35Tx_initial(struct hw_data * pHwData)
{
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;

 pWb35Tx->Tx4Urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!pWb35Tx->Tx4Urb)
  return 0;

 pWb35Tx->Tx2Urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!pWb35Tx->Tx2Urb)
 {
  usb_free_urb( pWb35Tx->Tx4Urb );
  return 0;
 }

 return 1;
}
