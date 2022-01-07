
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int mTxRate; int uTxRate; int mmTxRate; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 scalar_t__ ZM_IS_MULTICAST (int*) ;
 scalar_t__ ZM_MODE_AP ;
 int ZM_WLAN_DATA_FRAME ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfQueryOppositeRate(zdev_t* dev, u8_t dst_mac[6], u8_t frameType)
{
    zmw_get_wlan_dev(dev);


    if ( wd->wlanMode == ZM_MODE_AP )
    {
        return 0;
    }


    if ( (frameType & 0x0c) == ZM_WLAN_DATA_FRAME )
    {
        if ( ZM_IS_MULTICAST(dst_mac) )
        {
            return wd->sta.mTxRate;
        }
        else
        {
            return wd->sta.uTxRate;
        }
    }

    return wd->sta.mmTxRate;
}
