
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_3__ {int EnableHT; } ;
struct TYPE_4__ {int BandWidth40; int ExtOffset; int frequency; TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfCoreSetFrequencyEx (int *,int ,int,int,int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfiSetChannelManagement(zdev_t *dev, u32_t setting)
{
 zmw_get_wlan_dev(dev);

 switch (setting) {
 case 1:
  wd->sta.EnableHT = 1;
  wd->BandWidth40 = 1;
  wd->ExtOffset = 1;
  break;
 case 3:
  wd->sta.EnableHT = 1;
  wd->BandWidth40 = 1;
  wd->ExtOffset = 3;
  break;
 case 0:
  wd->sta.EnableHT = 1;
  wd->BandWidth40 = 0;
  wd->ExtOffset = 0;
  break;
 default:
  wd->BandWidth40 = 0;
  wd->ExtOffset = 0;
  break;
 }

 zfCoreSetFrequencyEx(dev, wd->frequency, wd->BandWidth40,
       wd->ExtOffset, ((void*)0));
}
