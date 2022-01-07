
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
struct zsMulticastAddr {int addr; } ;
struct TYPE_7__ {size_t size; TYPE_1__* macAddr; } ;
struct TYPE_6__ {int osRxFilter; TYPE_3__ multicastList; } ;
struct TYPE_8__ {TYPE_2__ sta; } ;
struct TYPE_5__ {int addr; } ;


 int ZM_PACKET_TYPE_ALL_MULTICAST ;
 TYPE_4__* wd ;
 int zfHpSetMulticastList (int *,size_t,size_t*,size_t) ;
 int zfMemoryCopy (int ,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetMulticastList(zdev_t* dev, u8_t size, u8_t* pList)
{
    struct zsMulticastAddr* pMacList = (struct zsMulticastAddr*) pList;
    u8_t i;
    u8_t bAllMulticast = 0;


    zmw_get_wlan_dev(dev);

    wd->sta.multicastList.size = size;
    for(i=0; i<size; i++)
    {
        zfMemoryCopy(wd->sta.multicastList.macAddr[i].addr,
                     pMacList[i].addr, 6);
    }

    if ( wd->sta.osRxFilter & ZM_PACKET_TYPE_ALL_MULTICAST )
        bAllMulticast = 1;
    zfHpSetMulticastList(dev, size, pList, bAllMulticast);

}
