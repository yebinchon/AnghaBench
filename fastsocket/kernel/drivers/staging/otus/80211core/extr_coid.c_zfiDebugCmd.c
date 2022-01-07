
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ keyId; } ;
struct TYPE_4__ {int checksumTest; int enableProtectionMode; int rxPacketDump; TYPE_1__ sta; } ;


 int ZM_LV_1 ;
 TYPE_2__* wd ;
 int zfTimerCancel (int *,int) ;
 int zfTimerClear (int *) ;
 int zfTimerSchedule (int *,int,int) ;
 int zm_msg1_mm (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u32_t zfiDebugCmd(zdev_t* dev, u32_t cmd, u32_t value)
{
    u16_t event;
    u32_t tick;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();


    zmw_enter_critical_section(dev);

    if ( cmd == 0 )
    {
        event = (u16_t) ((value >> 16) & 0xffff);
        tick = value & 0xffff;
        zfTimerSchedule(dev, event, tick);
    }
    else if ( cmd == 1 )
    {
        event = (u16_t) (value & 0xffff);
        zfTimerCancel(dev, event);
    }
    else if ( cmd == 2 )
    {
        zfTimerClear(dev);
    }
    else if ( cmd == 3 )
    {
        zfTimerSchedule(dev, 1, 500);
        zfTimerSchedule(dev, 2, 1000);
        zfTimerSchedule(dev, 3, 1000);
        zfTimerSchedule(dev, 4, 1000);
        zfTimerSchedule(dev, 5, 1500);
        zfTimerSchedule(dev, 6, 2000);
        zfTimerSchedule(dev, 7, 2200);
        zfTimerSchedule(dev, 6, 2500);
        zfTimerSchedule(dev, 8, 2800);
    }
    else if ( cmd == 4)
    {
        zfTimerSchedule(dev, 1, 500);
        zfTimerSchedule(dev, 2, 1000);
        zfTimerSchedule(dev, 3, 1000);
        zfTimerSchedule(dev, 4, 1000);
        zfTimerSchedule(dev, 5, 1500);
        zfTimerSchedule(dev, 6, 2000);
        zfTimerSchedule(dev, 7, 2200);
        zfTimerSchedule(dev, 6, 2500);
        zfTimerSchedule(dev, 8, 2800);
        zfTimerCancel(dev, 1);
        zfTimerCancel(dev, 3);
        zfTimerCancel(dev, 6);
    }
    else if ( cmd == 5 )
    {
        wd->sta.keyId = (u8_t) value;
    }
 else if ( cmd == 6 )
 {

        wd->checksumTest = value;
 }
 else if ( cmd == 7 )
 {
        wd->enableProtectionMode = value;
        zm_msg1_mm(ZM_LV_1, "wd->enableProtectionMode=", wd->enableProtectionMode);
 }
 else if ( cmd == 8 )
 {

        if (value)
        {
            wd->rxPacketDump = 1;
        }
        else
        {
            wd->rxPacketDump = 0;
        }
 }


    zmw_leave_critical_section(dev);

    return 0;
}
