
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int powerSaveMode; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_STA_PS_NONE ;
 TYPE_2__* wd ;
 int zfPSDeviceSleep (int *) ;
 int zfPowerSavingMgrSetMode (int *,int ) ;
 int zfSendNullData (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetPowerSaveMode(zdev_t* dev, u8_t mode)
{
    zfPowerSavingMgrSetMode(dev, mode);
}
