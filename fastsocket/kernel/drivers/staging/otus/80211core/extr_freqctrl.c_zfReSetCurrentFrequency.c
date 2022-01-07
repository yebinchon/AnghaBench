
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_2__ {int frequency; } ;


 TYPE_1__* wd ;
 int zfCoreSetFrequencyExV2 (int *,int ,int ,int ,int *,int) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfReSetCurrentFrequency(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    zm_debug_msg0("It is happen!!! No error message");

    zfCoreSetFrequencyExV2(dev, wd->frequency, 0, 0, ((void*)0), 1);
}
