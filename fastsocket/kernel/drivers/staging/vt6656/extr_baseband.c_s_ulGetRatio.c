
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int* aulPktNum; int uDiversityCnt; } ;
typedef TYPE_1__* PSDevice ;


 int RATE_1M ;
 int RATE_48M ;
 size_t RATE_54M ;
 scalar_t__ TOP_RATE_48M ;
 scalar_t__ TOP_RATE_54M ;

__attribute__((used)) static
ULONG
s_ulGetRatio (PSDevice pDevice)
{
int ii,jj;
ULONG ulRatio = 0;
ULONG ulMaxPacket;
ULONG ulPacketNum;


    ulMaxPacket = pDevice->aulPktNum[RATE_54M];
    if ( pDevice->aulPktNum[RATE_54M] != 0 ) {
        ulPacketNum = pDevice->aulPktNum[RATE_54M];
        ulRatio = (ulPacketNum * 1000 / pDevice->uDiversityCnt);
        ulRatio += TOP_RATE_54M;
    }
    for ( ii=RATE_48M;ii>=RATE_1M;ii-- ) {
        if ( pDevice->aulPktNum[ii] > ulMaxPacket ) {
            ulPacketNum = 0;
            for ( jj=RATE_54M;jj>=ii;jj--)
                ulPacketNum += pDevice->aulPktNum[jj];
            ulRatio = (ulPacketNum * 1000 / pDevice->uDiversityCnt);
            ulRatio += TOP_RATE_48M;
            ulMaxPacket = pDevice->aulPktNum[ii];
        }

    }

    return ulRatio;
}
