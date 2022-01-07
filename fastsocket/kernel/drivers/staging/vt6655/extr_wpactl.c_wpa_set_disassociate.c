
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct viawget_wpa_param {int addr; } ;
struct TYPE_5__ {int lock; scalar_t__ bLinkPass; TYPE_1__* pMgmt; } ;
struct TYPE_4__ {int abyCurrBSSID; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;
typedef int HANDLE ;


 int WLAN_CMD_DISASSOCIATE ;
 int bScheduleCommand (int ,int ,int *) ;
 int memcmp (int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int wpa_set_disassociate(PSDevice pDevice,
         struct viawget_wpa_param *param)
{
    PSMgmtObject pMgmt = pDevice->pMgmt;
 int ret = 0;

    spin_lock_irq(&pDevice->lock);
    if (pDevice->bLinkPass) {
        if (!memcmp(param->addr, pMgmt->abyCurrBSSID, 6))
            bScheduleCommand((HANDLE)pDevice, WLAN_CMD_DISASSOCIATE, ((void*)0));
    }
    spin_unlock_irq(&pDevice->lock);

    return ret;
}
