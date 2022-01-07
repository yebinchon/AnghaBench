
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PortOffset; int sKey; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int PBYTE ;
typedef int BOOL ;


 int KeybRemoveAllKey (int *,int ,int ) ;
 int TRUE ;

BOOL CARDbRemoveKey (PVOID pDeviceHandler, PBYTE pbyBSSID)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;

    KeybRemoveAllKey(&(pDevice->sKey), pbyBSSID, pDevice->PortOffset);
    return (TRUE);
}
