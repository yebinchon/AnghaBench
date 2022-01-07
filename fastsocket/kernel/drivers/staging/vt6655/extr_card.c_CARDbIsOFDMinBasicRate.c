
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int wBasicRate; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BOOL ;


 int FALSE ;
 int RATE_54M ;
 int RATE_6M ;
 int TRUE ;

BOOL CARDbIsOFDMinBasicRate (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    int ii;

    for (ii = RATE_54M; ii >= RATE_6M; ii --) {
        if ((pDevice->wBasicRate) & ((WORD)(1<<ii)))
            return TRUE;
    }
    return FALSE;
}
