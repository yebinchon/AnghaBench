
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wb35_tx {int ** TxBuffer; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;



unsigned char
Wb35Tx_get_tx_buffer(struct hw_data * pHwData, u8 **pBuffer)
{
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;

 *pBuffer = pWb35Tx->TxBuffer[0];
 return 1;
}
