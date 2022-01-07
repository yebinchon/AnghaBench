
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {int wSeqCtl; int * abyAddr2; } ;
struct TYPE_7__ {scalar_t__ cbFreeDFCB; size_t cbDFCB; TYPE_1__* sRxDFCB; int dwMaxReceiveLifetime; } ;
struct TYPE_6__ {scalar_t__ bInUse; int wSequence; int wFragNum; int * abyAddr2; int uLifetime; } ;
typedef TYPE_2__* PSDevice ;
typedef TYPE_3__* PS802_11Header ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int U_ETHER_ADDR_LEN ;
 int memcpy (int *,int *,int ) ;

UINT WCTLuInsertDFCB (PSDevice pDevice, PS802_11Header pMACHeader)
{
UINT ii;

    if (pDevice->cbFreeDFCB == 0)
        return(pDevice->cbDFCB);
    for(ii=0;ii<pDevice->cbDFCB;ii++) {
        if (pDevice->sRxDFCB[ii].bInUse == FALSE) {
            pDevice->cbFreeDFCB--;
            pDevice->sRxDFCB[ii].uLifetime = pDevice->dwMaxReceiveLifetime;
            pDevice->sRxDFCB[ii].bInUse = TRUE;
            pDevice->sRxDFCB[ii].wSequence = (pMACHeader->wSeqCtl >> 4);
            pDevice->sRxDFCB[ii].wFragNum = (pMACHeader->wSeqCtl & 0x000F);
            memcpy(&(pDevice->sRxDFCB[ii].abyAddr2[0]), &(pMACHeader->abyAddr2[0]), U_ETHER_ADDR_LEN);
            return(ii);
        }
    }
    return(pDevice->cbDFCB);
}
