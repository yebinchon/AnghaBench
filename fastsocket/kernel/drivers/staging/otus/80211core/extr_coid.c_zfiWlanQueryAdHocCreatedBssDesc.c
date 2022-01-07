
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_3__ {int ibssBssDesc; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfMemoryCopy (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryAdHocCreatedBssDesc(zdev_t* dev, struct zsBssInfo *pBssInfo)
{
    zmw_get_wlan_dev(dev);

    zfMemoryCopy((u8_t *)pBssInfo, (u8_t *)&wd->sta.ibssBssDesc, sizeof(struct zsBssInfo));
}
