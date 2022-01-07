
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_3__ {int currentFrequency; } ;
struct TYPE_4__ {int supportMode; TYPE_1__ sta; } ;


 int ZM_WIRELESS_MODE_24 ;
 int ZM_WIRELESS_MODE_5 ;
 TYPE_2__* wd ;
 int zfChGetFirst2GhzChannel (int *) ;
 int zfChGetLast5GhzChannel (int *) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiWlanQueryCurrentFrequency(zdev_t* dev, u8_t qmode)
{
    u32_t frequency;

    zmw_get_wlan_dev(dev);

    switch (qmode)
    {
    case 0:
        if (wd->sta.currentFrequency > 3000)
        {
            if (wd->supportMode & ZM_WIRELESS_MODE_5)
            {
                frequency = wd->sta.currentFrequency;
            }
            else if (wd->supportMode & ZM_WIRELESS_MODE_24)
            {
                frequency = zfChGetFirst2GhzChannel(dev);
            }
            else
            {
                frequency = 0;
            }
        }
        else
        {
            if (wd->supportMode & ZM_WIRELESS_MODE_24)
            {
                frequency = wd->sta.currentFrequency;
            }
            else if (wd->supportMode & ZM_WIRELESS_MODE_5)
            {
                frequency = zfChGetLast5GhzChannel(dev);
            }
            else
            {
                frequency = 0;
            }
        }
        break;

    case 1:
        frequency = wd->sta.currentFrequency;
        break;

    default:
        frequency = 0;
    }

    return (frequency*1000);
}
