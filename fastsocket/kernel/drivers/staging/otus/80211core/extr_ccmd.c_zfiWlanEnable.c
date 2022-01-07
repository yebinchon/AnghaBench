
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsTrafTally {int dummy; } ;
struct TYPE_3__ {int cmMicFailureCount; } ;
struct TYPE_4__ {int queueFlushed; TYPE_1__ sta; int trafTally; } ;


 int ZM_EVENT_CM_TIMER ;
 int ZM_LV_1 ;
 TYPE_2__* wd ;
 int zfFlushVtxq (int *) ;
 int zfGetWrapperSetting (int *) ;
 int zfHpUsbReset (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zfWlanEnable (int *) ;
 int zfZeroMemory (int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanEnable(zdev_t *dev)
{
 u16_t ret;

 zmw_get_wlan_dev(dev);

 zm_msg0_mm(ZM_LV_1, "Enable Wlan");

 zfGetWrapperSetting(dev);

 zfZeroMemory((u8_t *) &wd->trafTally, sizeof(struct zsTrafTally));


 if (wd->sta.cmMicFailureCount == 1) {
  zfTimerCancel(dev, ZM_EVENT_CM_TIMER);
  wd->sta.cmMicFailureCount = 0;
 }

 zfFlushVtxq(dev);
 if ((wd->queueFlushed & 0x10) != 0)
  zfHpUsbReset(dev);

 ret = zfWlanEnable(dev);

 return ret;
}
