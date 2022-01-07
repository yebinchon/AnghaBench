
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_3__ {int uapsdQ; } ;
struct TYPE_4__ {scalar_t__ wlanMode; int tick; TYPE_1__ ap; } ;


 scalar_t__ ZM_MODE_AP ;
 TYPE_2__* wd ;
 int zfApAgingSta (int *) ;
 int zfQueueAge (int *,int ,int,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfMmApTimeTick(zdev_t* dev)
{
    u32_t now;
    zmw_get_wlan_dev(dev);


    if (wd->wlanMode == ZM_MODE_AP)
    {


        now = wd->tick & 0x7f;
        if (now == 0x0)
        {
            zfApAgingSta(dev);
        }
        else if (now == 0x1f)
        {
            zfQueueAge(dev, wd->ap.uapsdQ, wd->tick, 10000);
        }


        else if (now == 0x3f)
        {

        }
    }
}
