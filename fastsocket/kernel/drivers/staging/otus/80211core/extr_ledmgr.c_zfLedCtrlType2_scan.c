
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int counter; } ;
struct TYPE_4__ {int supportMode; TYPE_1__ ledStruct; } ;


 int ZM_WIRELESS_MODE_24 ;
 int ZM_WIRELESS_MODE_5 ;
 TYPE_2__* wd ;
 int zfHpLedCtrl (int *,int,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrlType2_scan(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    switch(wd->ledStruct.counter % 16)
    {
        case 0:
            if(wd->supportMode & ZM_WIRELESS_MODE_24)
            {
                zfHpLedCtrl(dev, 0, 1);
                zfHpLedCtrl(dev, 1, 0);
            }
            else
            {
                zfHpLedCtrl(dev, 1, 1);
                zfHpLedCtrl(dev, 0, 0);
            }
            break;

        case 8:
            if(wd->supportMode & ZM_WIRELESS_MODE_5)
            {
                zfHpLedCtrl(dev, 1, 1);
                zfHpLedCtrl(dev, 0, 0);
            }
            else
            {
                zfHpLedCtrl(dev, 0, 1);
                zfHpLedCtrl(dev, 1, 0);
            }
            break;

        default:
            zfHpLedCtrl(dev, 0, 0);
            zfHpLedCtrl(dev, 1, 0);
            break;
    }
}
