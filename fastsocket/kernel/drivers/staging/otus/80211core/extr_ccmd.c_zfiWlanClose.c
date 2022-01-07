
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_5__ {int uapsdQ; } ;
struct TYPE_4__ {int uapsdQ; } ;
struct TYPE_6__ {TYPE_2__ sta; TYPE_1__ ap; int state; } ;


 int ZM_LV_0 ;
 int ZM_WLAN_STATE_CLOSEDED ;
 TYPE_3__* wd ;
 int zfAggRxFreeBuf (int *,int) ;
 int zfBssInfoDestroy (int *) ;
 int zfHpRelease (int *) ;
 int zfHpStopRecv (int *) ;
 int zfQueueDestroy (int *,int ) ;
 int zfWlanReset (int *) ;
 int zm_msg0_init (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanClose(zdev_t *dev)
{
 zmw_get_wlan_dev(dev);

 zm_msg0_init(ZM_LV_0, "enter");

 wd->state = ZM_WLAN_STATE_CLOSEDED;


 zfWlanReset(dev);

 zfHpStopRecv(dev);





 zfHpRelease(dev);

 zfQueueDestroy(dev, wd->ap.uapsdQ);
 zfQueueDestroy(dev, wd->sta.uapsdQ);

 zfBssInfoDestroy(dev);







 zm_msg0_init(ZM_LV_0, "exit");

 return 0;
}
