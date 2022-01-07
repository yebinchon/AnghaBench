
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_ckhdid {int dummy; } ;
struct wusbhc {int pal; int mutex; struct wusb_ckhdid chid; scalar_t__ active; } ;
typedef int chid ;


 int EBUSY ;
 scalar_t__ memcmp (struct wusb_ckhdid const*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_radio_start (int *) ;
 int uwb_radio_stop (int *) ;
 int wusb_ckhdid_zero ;

int wusbhc_chid_set(struct wusbhc *wusbhc, const struct wusb_ckhdid *chid)
{
 int result = 0;

 if (memcmp(chid, &wusb_ckhdid_zero, sizeof(chid)) == 0)
  chid = ((void*)0);

 mutex_lock(&wusbhc->mutex);
 if (chid) {
  if (wusbhc->active) {
   mutex_unlock(&wusbhc->mutex);
   return -EBUSY;
  }
  wusbhc->chid = *chid;
 }
 mutex_unlock(&wusbhc->mutex);

 if (chid)
  result = uwb_radio_start(&wusbhc->pal);
 else
  uwb_radio_stop(&wusbhc->pal);
 return result;
}
