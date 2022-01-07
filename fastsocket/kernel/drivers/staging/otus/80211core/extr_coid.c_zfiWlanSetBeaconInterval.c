
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef void* u16_t ;
struct TYPE_3__ {void* beaconInterval; } ;
struct TYPE_4__ {TYPE_1__ ws; void* beaconInterval; } ;


 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetBeaconInterval(zdev_t* dev,
                              u16_t beaconInterval,
                              u8_t bImmediate)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( bImmediate )
    {
        zmw_enter_critical_section(dev);
        wd->beaconInterval = beaconInterval;
        zmw_leave_critical_section(dev);


    }
    else
    {
        zmw_enter_critical_section(dev);
        wd->ws.beaconInterval = beaconInterval;
        zmw_leave_critical_section(dev);
    }
}
