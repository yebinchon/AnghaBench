
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int LEDCtrlFlag; int LEDCtrlType; int counter; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;



 TYPE_2__* wd ;
 int zfLedCtrlType1 (int *) ;
 int zfLedCtrlType2 (int *) ;
 int zfLedCtrlType3 (int *) ;
 int zfLedCtrl_BlinkWhenScan_Alpha (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfLed100msCtrl(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    wd->ledStruct.counter++;

    if(wd->ledStruct.LEDCtrlFlag)
    {
        switch(wd->ledStruct.LEDCtrlFlag) {
        case 128:
            zfLedCtrl_BlinkWhenScan_Alpha(dev);
        break;
        }
    }
    else
    {
        switch(wd->ledStruct.LEDCtrlType) {
        case 1:
            zfLedCtrlType1(dev);
        break;

        case 2:
            zfLedCtrlType2(dev);
        break;

        case 3:
            zfLedCtrlType3(dev);
        break;

        default:
            zfLedCtrlType1(dev);
        break;
        }
    }
}
