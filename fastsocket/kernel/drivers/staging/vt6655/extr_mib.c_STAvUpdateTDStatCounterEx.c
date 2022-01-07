
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int abyCntTxPattern; scalar_t__ dwCntTxBufLength; } ;
typedef TYPE_1__* PSStatCounter ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 int memcpy (int ,int ,int) ;

void
STAvUpdateTDStatCounterEx (
    PSStatCounter pStatistic,
    PBYTE pbyBuffer,
    DWORD cbFrameLength
    )
{
    UINT uPktLength;

    uPktLength = (UINT)cbFrameLength;


    pStatistic->dwCntTxBufLength = uPktLength;

    memcpy(pStatistic->abyCntTxPattern, pbyBuffer, 16);
}
