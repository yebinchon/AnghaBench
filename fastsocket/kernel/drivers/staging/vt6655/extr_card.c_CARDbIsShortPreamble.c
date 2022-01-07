
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ byPreambleType; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL CARDbIsShortPreamble (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    if (pDevice->byPreambleType == 0) {
        return(FALSE);
    }
    return(TRUE);
}
