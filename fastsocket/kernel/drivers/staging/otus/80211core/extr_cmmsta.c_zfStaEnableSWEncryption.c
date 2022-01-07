
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int SWEncryptEnable; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfHpSWDecrypt (int *,int) ;
 int zfHpSWEncrypt (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaEnableSWEncryption(zdev_t *dev, u8_t value)
{
    zmw_get_wlan_dev(dev);

    wd->sta.SWEncryptEnable = value;
    zfHpSWDecrypt(dev, 1);
    zfHpSWEncrypt(dev, 1);
}
