
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u16_t ;
struct TYPE_3__ {scalar_t__ protectionMode; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfApSetProtectionMode(zdev_t* dev, u16_t mode)
{
    zmw_get_wlan_dev(dev);

    if (mode == 0)
    {
        if (wd->ap.protectionMode != mode)
        {


            wd->ap.protectionMode = mode;
        }

    }
    else
    {
        if (wd->ap.protectionMode != mode)
        {


            wd->ap.protectionMode = mode;
        }
    }
    return;
}
