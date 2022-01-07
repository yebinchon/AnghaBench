
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_3__ {int counter; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;


 TYPE_2__* wd ;
 int zfHpLedCtrl (int *,int,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrlType3_scan(zdev_t* dev, u16_t isConnect)
{
    u32_t ton, toff, tmp;
    zmw_get_wlan_dev(dev);
    if(!isConnect)
        ton = 2, toff = 6;
    else
        ton = 6, toff = 2;

    if ((ton + toff) != 0)
    {
        tmp = wd->ledStruct.counter % (ton+toff);
       if (tmp < ton)
        {
            zfHpLedCtrl(dev, 0, 1);
            zfHpLedCtrl(dev, 1, 1);
        }
        else
        {
            zfHpLedCtrl(dev, 0, 0);
            zfHpLedCtrl(dev, 1, 0);
        }
    }
}
