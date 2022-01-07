
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_2__ {scalar_t__ swSniffer; } ;


 int ZM_LV_0 ;
 int ZM_LV_1 ;
 TYPE_1__* wd ;
 int zfHpSetSnifferMode (int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg1_mm (int ,char*,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetPacketTypePromiscuous(zdev_t *dev, u32_t setValue)
{
 zmw_get_wlan_dev(dev);

 wd->swSniffer = setValue;
 zm_msg1_mm(ZM_LV_0, "wd->swSniffer ", wd->swSniffer);
 if (setValue) {

  zfHpSetSnifferMode(dev, 1);
  zm_msg0_mm(ZM_LV_1, "enalbe sniffer mode");
 } else {
  zfHpSetSnifferMode(dev, 0);
  zm_msg0_mm(ZM_LV_0, "disalbe sniffer mode");
 }
}
