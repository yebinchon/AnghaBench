
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* WORD ;
typedef int VOID ;
struct TYPE_6__ {TYPE_1__* abyTxPktInfo; } ;
struct TYPE_7__ {TYPE_2__ scStatistic; } ;
struct TYPE_5__ {int abyDestAddr; void* wFIFOCtl; void* wLength; int byBroadMultiUni; } ;
typedef TYPE_2__* PSStatCounter ;
typedef TYPE_3__* PSDevice ;
typedef int PBYTE ;
typedef size_t BYTE ;


 scalar_t__ IS_BROADCAST_ADDRESS (int ) ;
 scalar_t__ IS_MULTICAST_ADDRESS (int ) ;
 int TX_PKT_BROAD ;
 int TX_PKT_MULTI ;
 int TX_PKT_UNI ;
 int U_ETHER_ADDR_LEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static
VOID
s_vSaveTxPktInfo(PSDevice pDevice, BYTE byPktNum, PBYTE pbyDestAddr, WORD wPktLength, WORD wFIFOCtl)
{
    PSStatCounter pStatistic=&(pDevice->scStatistic);


    if (IS_BROADCAST_ADDRESS(pbyDestAddr))
        pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni = TX_PKT_BROAD;
    else if (IS_MULTICAST_ADDRESS(pbyDestAddr))
        pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni = TX_PKT_MULTI;
    else
        pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni = TX_PKT_UNI;

    pStatistic->abyTxPktInfo[byPktNum].wLength = wPktLength;
    pStatistic->abyTxPktInfo[byPktNum].wFIFOCtl = wFIFOCtl;
    memcpy(pStatistic->abyTxPktInfo[byPktNum].abyDestAddr, pbyDestAddr, U_ETHER_ADDR_LEN);
}
