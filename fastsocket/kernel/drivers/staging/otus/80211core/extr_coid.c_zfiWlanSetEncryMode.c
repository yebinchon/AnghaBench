
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
struct TYPE_3__ {scalar_t__ encryMode; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ ws; } ;


 scalar_t__ ZM_AES ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_TKIP ;
 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetEncryMode(zdev_t* dev, u8_t encryMode)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (wd->wlanMode == ZM_MODE_AP)
    {

        if ((wd->ws.encryMode != ZM_AES) && (wd->ws.encryMode != ZM_TKIP))
            wd->ws.encryMode = encryMode;
    }
    else
        wd->ws.encryMode = encryMode;
    zmw_leave_critical_section(dev);
}
