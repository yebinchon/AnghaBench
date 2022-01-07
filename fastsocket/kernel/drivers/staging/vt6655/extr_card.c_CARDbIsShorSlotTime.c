
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bShortSlotTime; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BOOL ;



BOOL CARDbIsShorSlotTime (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    return(pDevice->bShortSlotTime);
}
