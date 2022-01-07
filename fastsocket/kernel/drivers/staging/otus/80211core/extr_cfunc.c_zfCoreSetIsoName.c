
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
struct TYPE_3__ {char* countryIsoName; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfCoreSetIsoName(zdev_t* dev, u8_t* isoName)
{
    zmw_get_wlan_dev(dev);

    wd->ws.countryIsoName[0] = isoName[0];
    wd->ws.countryIsoName[1] = isoName[1];
    wd->ws.countryIsoName[2] = '\0';
 }
