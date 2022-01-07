
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
typedef int u16_t ;
struct TYPE_3__ {void** bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfHpSetBssid (int *,void**) ;
 int zmw_get_wlan_dev (int *) ;

void zfUpdateBssid(zdev_t* dev, u8_t* bssid)
{

    zmw_get_wlan_dev(dev);




    wd->sta.bssid[0] = bssid[0] + (((u16_t) bssid[1]) << 8);
    wd->sta.bssid[1] = bssid[2] + (((u16_t) bssid[3]) << 8);
    wd->sta.bssid[2] = bssid[4] + (((u16_t) bssid[5]) << 8);


    zfHpSetBssid(dev, bssid);

}
