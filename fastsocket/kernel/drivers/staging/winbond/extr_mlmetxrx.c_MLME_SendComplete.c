
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int IsInUsed; int pMMPDU; scalar_t__ len; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; } ;
struct TYPE_4__ {int bResult; } ;
typedef TYPE_2__ MLME_TXCALLBACK ;


 int MLME_SUCCESS ;
 int MLMEfreeMMPDUBuffer (struct wbsoft_priv*,int ) ;
 int PACKET_FREE_TO_USE ;

void
MLME_SendComplete(struct wbsoft_priv * adapter, u8 PacketID, unsigned char SendOK)
{
 MLME_TXCALLBACK TxCallback;


 adapter->sMlmeFrame.len = 0;
 MLMEfreeMMPDUBuffer( adapter, adapter->sMlmeFrame.pMMPDU );


 TxCallback.bResult = MLME_SUCCESS;


 adapter->sMlmeFrame.IsInUsed = PACKET_FREE_TO_USE;
}
