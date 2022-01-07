
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
struct TYPE_2__ {void* maxTxPower5; void* maxTxPower2; } ;


 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetMaxTxPower(zdev_t* dev, u8_t power2, u8_t power5)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    wd->maxTxPower2 = power2;
    wd->maxTxPower5 = power5;
    zmw_leave_critical_section(dev);
}
