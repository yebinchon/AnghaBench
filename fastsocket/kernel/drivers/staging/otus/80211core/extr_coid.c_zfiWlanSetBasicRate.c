
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
typedef int u32_t ;
struct TYPE_3__ {int nRateBasic; void* gRateBasic; void* bRateBasic; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetBasicRate(zdev_t* dev, u8_t bRateSet, u8_t gRateSet,
                         u32_t nRateSet)
{
    zmw_get_wlan_dev(dev);

    wd->ws.bRateBasic = bRateSet;
    wd->ws.gRateBasic = gRateSet;
    wd->ws.nRateBasic = nRateSet;
}
