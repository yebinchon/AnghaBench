
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int wCurrentRate; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BOOL ;


 int TRUE ;

BOOL CARDbSetTxDataRate(
    PVOID pDeviceHandler,
    WORD wDataRate
    )
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;

    pDevice->wCurrentRate = wDataRate;
    return(TRUE);
}
