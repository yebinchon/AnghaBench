
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* aulSQ3Val; scalar_t__* aulPktNum; scalar_t__ uDiversityCnt; } ;
typedef TYPE_1__* PSDevice ;


 int MAX_RATE ;
 int RATE_1M ;

__attribute__((used)) static
void
s_vClearSQ3Value (PSDevice pDevice)
{
    int ii;
    pDevice->uDiversityCnt = 0;

    for ( ii=RATE_1M;ii<MAX_RATE;ii++) {
        pDevice->aulPktNum[ii] = 0;
        pDevice->aulSQ3Val[ii] = 0;
    }
}
