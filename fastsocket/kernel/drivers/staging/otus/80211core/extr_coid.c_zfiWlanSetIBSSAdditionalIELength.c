
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ ibssAdditionalIESize; int ibssAdditionalIE; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfMemoryCopy (int ,int *,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetIBSSAdditionalIELength(zdev_t* dev, u32_t ibssAdditionalIESize, u8_t* ibssAdditionalIE)
{
 zmw_get_wlan_dev(dev);

 if ( ibssAdditionalIESize )
    {
     wd->sta.ibssAdditionalIESize = ibssAdditionalIESize;
        zfMemoryCopy(wd->sta.ibssAdditionalIE, ibssAdditionalIE, (u16_t)ibssAdditionalIESize);
    }
    else
     wd->sta.ibssAdditionalIESize = 0;
}
