
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_2__ {int wBasicRate; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;


 int RATE_1M ;

WORD CARDwGetCCKControlRate(PVOID pDeviceHandler, WORD wRateIdx)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    UINT ui = (UINT)wRateIdx;

    while (ui > RATE_1M) {
        if (pDevice->wBasicRate & ((WORD)1 << ui)) {
            return (WORD)ui;
        }
        ui --;
    }
    return (WORD)RATE_1M;
}
