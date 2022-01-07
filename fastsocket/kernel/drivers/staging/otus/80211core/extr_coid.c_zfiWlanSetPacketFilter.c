
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_4__ {scalar_t__ macAddr; int size; } ;
struct TYPE_5__ {int osRxFilter; TYPE_1__ multicastList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_PACKET_TYPE_ALL_MULTICAST ;
 TYPE_3__* wd ;
 int zfHpSetMulticastList (int *,int ,int*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetPacketFilter(zdev_t* dev, u32_t PacketFilter)
{
    u8_t bAllMulticast = 0;
    u32_t oldFilter;

    zmw_get_wlan_dev(dev);

    oldFilter = wd->sta.osRxFilter;

    wd->sta.osRxFilter = PacketFilter;

    if ((oldFilter & ZM_PACKET_TYPE_ALL_MULTICAST) !=
        (wd->sta.osRxFilter & ZM_PACKET_TYPE_ALL_MULTICAST))
    {
        if ( wd->sta.osRxFilter & ZM_PACKET_TYPE_ALL_MULTICAST )
            bAllMulticast = 1;
        zfHpSetMulticastList(dev, wd->sta.multicastList.size,
                             (u8_t*)wd->sta.multicastList.macAddr, bAllMulticast);
    }
}
