
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ SWEncryptEnable; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfHpSWDecrypt (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanCheckSWEncryption(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if (wd->sta.SWEncryptEnable != 0)
    {
        zfHpSWDecrypt(dev, 1);
    }
}
