
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef void* u16_t ;
struct TYPE_3__ {void* frequency; scalar_t__ autoSetFrequency; } ;
struct TYPE_4__ {TYPE_1__ ws; void* frequency; } ;


 TYPE_2__* wd ;
 int zfCoreSetFrequency (int *,void*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetFrequency(zdev_t* dev, u32_t frequency, u8_t bImmediate)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( bImmediate )
    {
        zmw_enter_critical_section(dev);
        wd->frequency = (u16_t) (frequency/1000);
        zmw_leave_critical_section(dev);
        zfCoreSetFrequency(dev, wd->frequency);
    }
    else
    {
        zmw_enter_critical_section(dev);
        if( frequency == 0 )
        {
            wd->ws.autoSetFrequency = 0;
        }
        wd->ws.frequency = (u16_t) (frequency/1000);
        zmw_leave_critical_section(dev);
    }
}
