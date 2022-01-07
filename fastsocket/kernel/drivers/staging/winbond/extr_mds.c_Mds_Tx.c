
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_2__ {int len; } ;
struct wb35_mds {size_t TxFillIndex; int* TxOwner; size_t* pTxBuffer; size_t TxDesIndex; int* TxDesFrom; int TxToggle; scalar_t__ TxTsc; int* TxBufferSize; size_t* TxCountInBuffer; int TxThreadCount; int TxTsc_2; scalar_t__ TxPause; } ;
struct hw_data {int IsKeyPreSet; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; struct wb35_mds Mds; struct hw_data sHwData; } ;
struct wb35_descriptor {size_t Descriptor_ID; scalar_t__ EapFix; } ;


 int CURRENT_FRAGMENT_THRESHOLD ;
 int DOT_11_DA_OFFSET ;
 scalar_t__ HAL_USB_MODE_BURST (struct hw_data*) ;
 size_t MAC_SUBTYPE_MNGMNT_PROBE_REQUEST ;
 size_t MAX_USB_TX_BUFFER ;
 size_t MAX_USB_TX_BUFFER_NUMBER ;
 size_t MAX_USB_TX_DESCRIPTOR ;
 int MLME_GetNextPacket (struct wbsoft_priv*,struct wb35_descriptor*) ;
 int MLME_SendComplete (struct wbsoft_priv*,int ,int) ;
 int Mds_BodyCopy (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ;
 int Mds_DurationSet (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ;
 int Mds_HeaderCopy (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ;
 int Wb35Tx_start (struct wbsoft_priv*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int hal_driver_init_OK (struct hw_data*) ;
 int memset (size_t*,int ,int) ;
 int printk (char*,...) ;

void
Mds_Tx(struct wbsoft_priv * adapter)
{
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_mds *pMds = &adapter->Mds;
 struct wb35_descriptor TxDes;
 struct wb35_descriptor *pTxDes = &TxDes;
 u8 *XmitBufAddress;
 u16 XmitBufSize, PacketSize, stmp, CurrentSize, FragmentThreshold;
 u8 FillIndex, TxDesIndex, FragmentCount, FillCount;
 unsigned char BufferFilled = 0;


 if (pMds->TxPause)
  return;
 if (!hal_driver_init_OK(pHwData))
  return;


 if (atomic_inc_return(&pMds->TxThreadCount) != 1)
  goto cleanup;


 do {
  FillIndex = pMds->TxFillIndex;
  if (pMds->TxOwner[FillIndex]) {



   break;
  }

  XmitBufAddress = pMds->pTxBuffer + (MAX_USB_TX_BUFFER * FillIndex);
  XmitBufSize = 0;
  FillCount = 0;
  do {
   PacketSize = adapter->sMlmeFrame.len;
   if (!PacketSize)
    break;


   FragmentThreshold = CURRENT_FRAGMENT_THRESHOLD;

   FragmentCount = PacketSize/FragmentThreshold + 1;
   stmp = PacketSize + FragmentCount*32 + 8;
   if ((XmitBufSize + stmp) >= MAX_USB_TX_BUFFER) {
    printk("[Mds_Tx] Excess max tx buffer.\n");
    break;
   }





   BufferFilled = 1;


   memset((u8 *)pTxDes + 1, 0, sizeof(struct wb35_descriptor) - 1);

   TxDesIndex = pMds->TxDesIndex;
   pTxDes->Descriptor_ID = TxDesIndex;
   pMds->TxDesFrom[ TxDesIndex ] = 2;
   pMds->TxDesIndex++;
   pMds->TxDesIndex %= MAX_USB_TX_DESCRIPTOR;

   MLME_GetNextPacket( adapter, pTxDes );


   Mds_HeaderCopy( adapter, pTxDes, XmitBufAddress );


   if (pTxDes->EapFix) {



    pHwData->IsKeyPreSet = 1;
   }


   CurrentSize = Mds_BodyCopy(adapter, pTxDes, XmitBufAddress);


   Mds_DurationSet(adapter, pTxDes, XmitBufAddress);


   XmitBufSize += CurrentSize;
   XmitBufAddress += CurrentSize;




    pMds->TxToggle = 1;


   MLME_SendComplete(adapter, 0, 1);


   pMds->TxTsc++;
   if (pMds->TxTsc == 0)
    pMds->TxTsc_2++;

   FillCount++;
  } while (HAL_USB_MODE_BURST(pHwData));


  if (BufferFilled) {

   pMds->TxBufferSize[ FillIndex ] = XmitBufSize;


   pMds->TxCountInBuffer[FillIndex] = FillCount;


   pMds->TxOwner[FillIndex] = 1;

   pMds->TxFillIndex++;
   pMds->TxFillIndex %= MAX_USB_TX_BUFFER_NUMBER;
   BufferFilled = 0;
  } else
   break;

  if (!PacketSize)
   break;

 } while(1);




 if (!pHwData->IsKeyPreSet)
  Wb35Tx_start(adapter);

 cleanup:
 atomic_dec(&pMds->TxThreadCount);
}
