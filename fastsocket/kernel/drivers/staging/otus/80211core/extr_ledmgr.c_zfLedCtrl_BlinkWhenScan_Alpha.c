
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_3__ {int LEDCtrlFlag; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;


 scalar_t__ ZM_LED_CTRL_FLAG_ALPHA ;
 TYPE_2__* wd ;
 int zfHpLedCtrl (int *,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrl_BlinkWhenScan_Alpha(zdev_t* dev)
{
    static u32_t counter = 0;
    zmw_get_wlan_dev(dev);

    if(counter > 34)
    {
        wd->ledStruct.LEDCtrlFlag &= ~(u8_t)ZM_LED_CTRL_FLAG_ALPHA;
        counter = 0;
    }

    if( (counter % 3) < 2)
        zfHpLedCtrl(dev, 0, 1);
    else
        zfHpLedCtrl(dev, 0, 0);

    counter++;
}
