
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int dropUnencryptedPkts; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetDropUnencryptedPackets(zdev_t* dev, u8_t enable)
{
    zmw_get_wlan_dev(dev);

    wd->ws.dropUnencryptedPkts = enable;
}
