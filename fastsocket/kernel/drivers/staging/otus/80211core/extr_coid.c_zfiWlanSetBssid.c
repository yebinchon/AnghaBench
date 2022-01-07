
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int bDesiredBssid; int * desiredBssid; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 int TRUE ;
 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetBssid(zdev_t* dev, u8_t* bssid)
{
    u16_t i;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    for (i=0; i<6; i++)
    {
        wd->ws.desiredBssid[i] = bssid[i];
    }
    wd->ws.bDesiredBssid = TRUE;
    zmw_leave_critical_section(dev);

}
