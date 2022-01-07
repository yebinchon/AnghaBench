
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int SignalQuality; int SignalStrength; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQuerySignalInfo(zdev_t* dev, u8_t *buffer)
{
    zmw_get_wlan_dev(dev);



    buffer[0] = wd->SignalStrength;
    buffer[1] = wd->SignalQuality;
}
