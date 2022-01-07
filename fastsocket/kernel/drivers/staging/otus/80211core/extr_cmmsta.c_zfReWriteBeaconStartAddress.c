
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {scalar_t__ atimWindow; } ;
struct TYPE_4__ {int tickIbssSendBeacon; TYPE_1__ sta; int dtim; int beaconInterval; } ;


 int ZM_MODE_IBSS ;
 TYPE_2__* wd ;
 int zfHpEnableBeacon (int *,int ,int ,int ,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfReWriteBeaconStartAddress(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    wd->tickIbssSendBeacon++;
    zmw_leave_critical_section(dev);

    if ( wd->tickIbssSendBeacon == 40 )
    {

        zfHpEnableBeacon(dev, ZM_MODE_IBSS, wd->beaconInterval, wd->dtim, (u8_t)wd->sta.atimWindow);
        zmw_enter_critical_section(dev);
        wd->tickIbssSendBeacon = 0;
        zmw_leave_critical_section(dev);
    }
}
