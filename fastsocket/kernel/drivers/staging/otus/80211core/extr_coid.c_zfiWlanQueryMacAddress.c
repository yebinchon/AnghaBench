
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_2__ {int* macAddr; } ;


 TYPE_1__* wd ;
 int zfwGetVapId (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryMacAddress(zdev_t* dev, u8_t* addr)
{
    u16_t vapId = 0;
    zmw_get_wlan_dev(dev);

    vapId = zfwGetVapId(dev);

    addr[0] = (u8_t)(wd->macAddr[0] & 0xff);
    addr[1] = (u8_t)(wd->macAddr[0] >> 8);
    addr[2] = (u8_t)(wd->macAddr[1] & 0xff);
    addr[3] = (u8_t)(wd->macAddr[1] >> 8);
    addr[4] = (u8_t)(wd->macAddr[2] & 0xff);
    if (vapId == 0xffff)
        addr[5] = (u8_t)(wd->macAddr[2] >> 8);
    else
    {



        addr[5] = vapId + 1 + (u8_t)(wd->macAddr[2] >> 8);

    }

    return;
}
