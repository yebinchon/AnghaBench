
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int* aulPktNum; int* aulSQ3Val; } ;
typedef TYPE_1__* PSDevice ;


 int RATE_48M ;
 size_t RATE_54M ;
 int RATE_6M ;

__attribute__((used)) static
ULONG
s_ulGetLowSQ3(PSDevice pDevice)
{
int ii;
ULONG ulSQ3 = 0;
ULONG ulMaxPacket;

    ulMaxPacket = pDevice->aulPktNum[RATE_54M];
    if ( pDevice->aulPktNum[RATE_54M] != 0 ) {
        ulSQ3 = pDevice->aulSQ3Val[RATE_54M] / pDevice->aulPktNum[RATE_54M];
    }
    for ( ii=RATE_48M;ii>=RATE_6M;ii-- ) {
        if ( pDevice->aulPktNum[ii] > ulMaxPacket ) {
            ulMaxPacket = pDevice->aulPktNum[ii];
            ulSQ3 = pDevice->aulSQ3Val[ii] / pDevice->aulPktNum[ii];
        }
    }

    return ulSQ3;
}
