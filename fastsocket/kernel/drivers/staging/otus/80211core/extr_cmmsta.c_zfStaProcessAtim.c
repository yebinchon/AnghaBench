
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct TYPE_3__ {int recvAtim; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaProcessAtim(zdev_t* dev, zbuf_t* buf)
{
    zmw_get_wlan_dev(dev);

    zm_debug_msg0("Receiving Atim window notification");

    wd->sta.recvAtim = 1;
}
