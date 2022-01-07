
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int abyCntRxPattern; int dwCntRxFrmLength; } ;
typedef TYPE_1__* PSStatCounter ;
typedef scalar_t__ PBYTE ;
typedef int BYTE ;


 int STAvUpdateRDStatCounter (TYPE_1__*,int ,int ,int ,scalar_t__,int ) ;
 int memcpy (int ,scalar_t__,int) ;

void
STAvUpdateRDStatCounterEx (
    PSStatCounter pStatistic,
    BYTE byRSR,
    BYTE byNewRSR,
    BYTE byRxRate,
    PBYTE pbyBuffer,
    UINT cbFrameLength
    )
{
    STAvUpdateRDStatCounter(
                    pStatistic,
                    byRSR,
                    byNewRSR,
                    byRxRate,
                    pbyBuffer,
                    cbFrameLength
                    );


    pStatistic->dwCntRxFrmLength = cbFrameLength;

    memcpy(pStatistic->abyCntRxPattern, (PBYTE)pbyBuffer, 10);
}
