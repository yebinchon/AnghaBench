
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; } ;
struct wusb_dev {int entry_ts; } ;


 int __wusbhc_keep_alive (struct wusbhc*) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void wusbhc_handle_dn_alive(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 mutex_lock(&wusbhc->mutex);
 wusb_dev->entry_ts = jiffies;
 __wusbhc_keep_alive(wusbhc);
 mutex_unlock(&wusbhc->mutex);
}
