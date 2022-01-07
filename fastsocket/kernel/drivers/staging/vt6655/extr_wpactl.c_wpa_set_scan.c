
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct viawget_wpa_param {int dummy; } ;
struct TYPE_3__ {int lock; int bLinkPass; } ;
typedef TYPE_1__* PSDevice ;
typedef int HANDLE ;


 int BSSvClearBSSList (int ,int ) ;
 int WLAN_CMD_BSSID_SCAN ;
 int bScheduleCommand (int ,int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int wpa_set_scan(PSDevice pDevice,
         struct viawget_wpa_param *param)
{
 int ret = 0;

    spin_lock_irq(&pDevice->lock);
    BSSvClearBSSList((HANDLE)pDevice, pDevice->bLinkPass);
    bScheduleCommand((HANDLE) pDevice, WLAN_CMD_BSSID_SCAN, ((void*)0));
    spin_unlock_irq(&pDevice->lock);

    return ret;
}
