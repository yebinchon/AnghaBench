
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_MAC_WORD_TO_BYTE (int ,int *) ;
 TYPE_2__* wd ;
 int zfMemoryCopy (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryBssid(zdev_t* dev, u8_t* bssid)
{
    u8_t addr[6];

    zmw_get_wlan_dev(dev);

    ZM_MAC_WORD_TO_BYTE(wd->sta.bssid, addr);
    zfMemoryCopy(bssid, addr, 6);
}
