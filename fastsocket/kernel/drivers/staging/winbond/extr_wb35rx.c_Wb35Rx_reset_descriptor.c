
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct wb35_rx {int* RxOwner; scalar_t__ rx_halt; int EP3vm_state; scalar_t__ RxBufferId; scalar_t__ RxProcessIndex; scalar_t__ ByteReceived; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;


 size_t MAX_USB_RX_BUFFER_NUMBER ;
 int VM_STOP ;

__attribute__((used)) static void Wb35Rx_reset_descriptor( struct hw_data * pHwData )
{
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;
 u32 i;

 pWb35Rx->ByteReceived = 0;
 pWb35Rx->RxProcessIndex = 0;
 pWb35Rx->RxBufferId = 0;
 pWb35Rx->EP3vm_state = VM_STOP;
 pWb35Rx->rx_halt = 0;


 for( i=0; i<MAX_USB_RX_BUFFER_NUMBER; i++ )
  pWb35Rx->RxOwner[i] = 1;
}
