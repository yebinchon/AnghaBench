
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ IsInUsed; int* pMMPDU; int DataType; int wNumTxMMPDU; int len; int wNumTxMMPDUDiscarded; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; } ;


 int Mds_Tx (struct wbsoft_priv*) ;
 scalar_t__ PACKET_COME_FROM_MLME ;
 scalar_t__ PACKET_FREE_TO_USE ;

u8 MLMESendFrame(struct wbsoft_priv * adapter, u8 *pMMPDU, u16 len, u8 DataType)


{
 if (adapter->sMlmeFrame.IsInUsed != PACKET_FREE_TO_USE) {
  adapter->sMlmeFrame.wNumTxMMPDUDiscarded++;
  return 0;
 }
 adapter->sMlmeFrame.IsInUsed = PACKET_COME_FROM_MLME;


 adapter->sMlmeFrame.pMMPDU = pMMPDU;
 adapter->sMlmeFrame.DataType = DataType;

 adapter->sMlmeFrame.len = len;
 adapter->sMlmeFrame.wNumTxMMPDU++;





 Mds_Tx(adapter);
 return 1;
}
