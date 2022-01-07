
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u16_t ;
struct TYPE_2__ {void** macAddr; } ;


 TYPE_1__* wd ;
 int zfHpSetMacAddress (int *,void**,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetMacAddress(zdev_t* dev, u16_t* mac)
{
    zmw_get_wlan_dev(dev);

    wd->macAddr[0] = mac[0];
    wd->macAddr[1] = mac[1];
    wd->macAddr[2] = mac[2];

    zfHpSetMacAddress(dev, mac, 0);
}
