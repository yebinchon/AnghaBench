
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_2__ {int* macAddr; int (* zfcbMacAddressNotify ) (int *,int*) ;} ;


 int stub1 (int *,int*) ;
 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfCoreMacAddressNotify(zdev_t* dev, u8_t* addr)
{
    zmw_get_wlan_dev(dev);

    wd->macAddr[0] = addr[0] | ((u16_t)addr[1]<<8);
    wd->macAddr[1] = addr[2] | ((u16_t)addr[3]<<8);
    wd->macAddr[2] = addr[4] | ((u16_t)addr[5]<<8);



    if (wd->zfcbMacAddressNotify != ((void*)0))
    {
        wd->zfcbMacAddressNotify(dev, addr);
    }
}
