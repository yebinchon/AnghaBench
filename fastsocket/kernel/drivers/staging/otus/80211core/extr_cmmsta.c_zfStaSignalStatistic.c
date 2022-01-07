
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int SignalStrength; int SignalQuality; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfStaSignalStatistic(zdev_t* dev, u8_t SignalStrength, u8_t SignalQuality)
{
    zmw_get_wlan_dev(dev);


    wd->SignalStrength = (wd->SignalStrength * 7 + SignalStrength * 3)/10;
    wd->SignalQuality = (wd->SignalQuality * 7 + SignalQuality * 3)/10;

}
