
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int R01_decryption_method; } ;
struct wb35_descriptor {int** buffer_address; int* buffer_size; TYPE_1__ R01; } ;



__attribute__((used)) static void Wb35Rx_adjust(struct wb35_descriptor *pRxDes)
{
 u32 * pRxBufferAddress;
 u32 DecryptionMethod;
 u32 i;
 u16 BufferSize;

 DecryptionMethod = pRxDes->R01.R01_decryption_method;
 pRxBufferAddress = pRxDes->buffer_address[0];
 BufferSize = pRxDes->buffer_size[0];


 BufferSize -= 4;
 if (DecryptionMethod)
  BufferSize -= 4;
 if (DecryptionMethod == 3)
  BufferSize -= 4;


 if (DecryptionMethod == 1)
 {
  for( i=6; i>0; i-- )
   pRxBufferAddress[i] = pRxBufferAddress[i-1];
  pRxDes->buffer_address[0] = pRxBufferAddress + 1;
  BufferSize -= 4;
 }
 else if( DecryptionMethod )
 {
  for (i=7; i>1; i--)
   pRxBufferAddress[i] = pRxBufferAddress[i-2];
  pRxDes->buffer_address[0] = pRxBufferAddress + 2;
  BufferSize -= 8;
 }
 pRxDes->buffer_size[0] = BufferSize;
}
