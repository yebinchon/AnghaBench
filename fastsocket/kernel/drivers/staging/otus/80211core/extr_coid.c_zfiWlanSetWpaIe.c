
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_5__ {int wpaSupport; scalar_t__ wpaLen; int wpaIe; } ;
struct TYPE_4__ {int* wpaSupport; scalar_t__* wpaLen; int * wpaIe; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ ap; } ;


 scalar_t__ ZM_MAX_WPAIE_SIZE ;
 scalar_t__ ZM_MODE_AP ;
 TYPE_3__* wd ;
 int zfMemoryCopy (int ,scalar_t__*,scalar_t__) ;
 int zfwGetVapId (int *) ;
 int zm_assert (int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetWpaIe(zdev_t* dev, u8_t* ie, u8_t Length)
{
    u16_t vapId = 0;
    zmw_get_wlan_dev(dev);

    if (wd->wlanMode == ZM_MODE_AP)
    {
        vapId = zfwGetVapId(dev);

        if (vapId == 0xffff)
            vapId = 0;
        else
            vapId++;

        zm_assert(Length < ZM_MAX_WPAIE_SIZE);
        if (Length < ZM_MAX_WPAIE_SIZE)
        {
            wd->ap.wpaLen[vapId] = Length;
            zfMemoryCopy(wd->ap.wpaIe[vapId], ie, wd->ap.wpaLen[vapId]);
        }

    }
    else
    {
        wd->sta.wpaLen = Length;
        zfMemoryCopy(wd->sta.wpaIe, ie, wd->sta.wpaLen);
    }

    if (wd->wlanMode == ZM_MODE_AP)
    {
        wd->ap.wpaSupport[vapId] = 1;
    }
    else
    {
        wd->sta.wpaSupport = 1;
    }

}
