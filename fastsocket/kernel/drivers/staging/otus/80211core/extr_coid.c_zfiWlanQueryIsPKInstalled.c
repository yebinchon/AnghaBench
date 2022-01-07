
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_5__ {TYPE_1__* oppositeInfo; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ pkInstalled; } ;


 TYPE_3__* wd ;
 scalar_t__ zfStaFindOppositeByMACAddr (int *,int *,scalar_t__*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfiWlanQueryIsPKInstalled(zdev_t *dev, u8_t *staMacAddr)
{
    u8_t isInstalled = 0;



    u8_t res, peerIdx;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    res = zfStaFindOppositeByMACAddr(dev, (u16_t *)staMacAddr, &peerIdx);
    if( res == 0 )
    {
        isInstalled = wd->sta.oppositeInfo[peerIdx].pkInstalled;
    }
    zmw_leave_critical_section(dev);



    return isInstalled;
}
