
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_2__ {int tick; } ;


 TYPE_1__* wd ;
 int zfMemoryCopy (int*,int*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfGenerateRandomBSSID(zdev_t* dev, u8_t *MACAddr, u8_t *BSSID)
{

    u32_t time;

    zmw_get_wlan_dev(dev);

    time = wd->tick;






    zfMemoryCopy(BSSID, MACAddr, 6);
    BSSID[0] ^= (u8_t)(time & 0xff);
    BSSID[0] &= ~0x01;
    BSSID[0] |= 0x02;

    time >>= 8;
    BSSID[1] ^= (u8_t)(time & 0xff);

    time >>= 8;
    BSSID[2] ^= (u8_t)(time & 0xff);

    time >>= 8;
    BSSID[3] ^= (u8_t)(time & 0xff);
}
