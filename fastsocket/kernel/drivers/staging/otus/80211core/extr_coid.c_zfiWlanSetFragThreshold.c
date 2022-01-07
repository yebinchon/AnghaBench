
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_2__ {int fragThreshold; } ;


 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetFragThreshold(zdev_t* dev, u16_t fragThreshold)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if (fragThreshold == 0)
    {
        wd->fragThreshold = 32767;
    }
    else if (fragThreshold < 256)
    {

        wd->fragThreshold = 256;
    }
    else if (fragThreshold > 2346)
    {
        wd->fragThreshold = 2346;
    }
    else
    {
        wd->fragThreshold = fragThreshold & 0xfffe;
    }

    zmw_leave_critical_section(dev);
}
