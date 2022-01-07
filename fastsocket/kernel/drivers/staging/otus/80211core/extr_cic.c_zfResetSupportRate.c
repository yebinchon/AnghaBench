
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int bRate; int bRateBasic; int gRate; int gRateBasic; } ;






 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfResetSupportRate(zdev_t* dev, u8_t type)
{
    zmw_get_wlan_dev(dev);

    switch(type)
    {
    case 128:
        wd->bRate = 0;
        wd->bRateBasic = 0;
        wd->gRate = 0;
        wd->gRateBasic = 0;
        break;
    case 131:
        wd->bRate = 0xf;
        wd->bRateBasic = 0xf;
        wd->gRate = 0xff;
        wd->gRateBasic = 0x15;
        break;
    case 129:
        wd->bRate = 0xf;
        wd->bRateBasic = 0xf;
        wd->gRate = 0;
        wd->gRateBasic = 0;
        break;
    case 130:
        wd->bRate = 0xf;
        wd->bRateBasic = 0xf;
        wd->gRate = 0xff;
        wd->gRateBasic = 0;
        break;
    }
}
