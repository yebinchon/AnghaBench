
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
struct TYPE_6__ {size_t size; TYPE_1__* macAddr; } ;
struct TYPE_7__ {TYPE_2__ multicastList; } ;
struct TYPE_8__ {TYPE_3__ sta; } ;
struct TYPE_5__ {int addr; } ;


 TYPE_4__* wd ;
 int zfMemoryCopy (int ,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanGetMulticastList(zdev_t* dev, u8_t* pMCList)
{
    struct zsMulticastAddr* pMacList = (struct zsMulticastAddr*) pMCList;
    u8_t i;

    zmw_get_wlan_dev(dev);

    for ( i=0; i<wd->sta.multicastList.size; i++ )
    {
        zfMemoryCopy(pMacList[i].addr, wd->sta.multicastList.macAddr[i].addr, 6);
    }
}
