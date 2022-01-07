
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int connectByReasso; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int macAddr; int ExtOffset; int BandWidth40; int frequency; } ;


 int FALSE ;
 int ZM_LV_1 ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 TYPE_2__* wd ;
 int zfCoreSetFrequencyExV2 (int *,int ,int ,int ,int *,int) ;
 int zfFlushVtxq (int *) ;
 int zfHpReinit (int *,int ) ;
 int zfHpSetMacAddress (int *,int ,int ) ;
 int zfHpSetRollCallTable (int *) ;
 int zfHpStartRecv (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 scalar_t__ zfStaIsConnecting (int *) ;
 int zfWlanEnable (int *) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfiWlanResume(zdev_t *dev, u8_t doReconn)
{
 u16_t ret;
 zmw_get_wlan_dev(dev);
 zmw_declare_for_critical_section();


 zfHpReinit(dev, wd->frequency);


 zfCoreSetFrequencyExV2(dev, wd->frequency, wd->BandWidth40,
  wd->ExtOffset, ((void*)0), 1);

 zfHpSetMacAddress(dev, wd->macAddr, 0);


 zfHpStartRecv(dev);

 zfFlushVtxq(dev);

 if (wd->wlanMode != ZM_MODE_INFRASTRUCTURE &&
   wd->wlanMode != ZM_MODE_IBSS)
  return 1;

 zm_msg0_mm(ZM_LV_1, "Resume Wlan");
 if ((zfStaIsConnected(dev)) || (zfStaIsConnecting(dev))) {
  if (doReconn == 1) {
   zm_msg0_mm(ZM_LV_1, "Re-connect...");
   zmw_enter_critical_section(dev);
   wd->sta.connectByReasso = FALSE;
   zmw_leave_critical_section(dev);

   zfWlanEnable(dev);
  } else if (doReconn == 0)
   zfHpSetRollCallTable(dev);
 }

 ret = 0;

 return ret;
}
