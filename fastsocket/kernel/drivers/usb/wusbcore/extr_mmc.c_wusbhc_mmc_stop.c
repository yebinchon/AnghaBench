
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; int (* stop ) (struct wusbhc*,int ) ;scalar_t__ active; } ;


 int WUSB_CHANNEL_STOP_DELAY_MS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wusbhc*,int ) ;

__attribute__((used)) static void wusbhc_mmc_stop(struct wusbhc *wusbhc)
{
 mutex_lock(&wusbhc->mutex);
 wusbhc->active = 0;
 wusbhc->stop(wusbhc, WUSB_CHANNEL_STOP_DELAY_MS);
 mutex_unlock(&wusbhc->mutex);
}
