
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int wBasicRate; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BOOL ;


 int CARDvUpdateBasicTopRate (TYPE_1__*) ;
 int TRUE ;

BOOL CARDbAddBasicRate (PVOID pDeviceHandler, WORD wRateIdx)
{
PSDevice pDevice = (PSDevice) pDeviceHandler;
WORD wRate = (WORD)(1<<wRateIdx);

    pDevice->wBasicRate |= wRate;


    CARDvUpdateBasicTopRate(pDevice);

    return(TRUE);
}
