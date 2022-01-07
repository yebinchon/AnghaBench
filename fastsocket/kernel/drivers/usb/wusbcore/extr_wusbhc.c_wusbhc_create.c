
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; int trust_timeout; } ;


 int WUSB_TRUST_TIMEOUT_MS ;
 int mutex_init (int *) ;
 int wusbhc_devconnect_create (struct wusbhc*) ;
 int wusbhc_devconnect_destroy (struct wusbhc*) ;
 int wusbhc_mmcie_create (struct wusbhc*) ;
 int wusbhc_mmcie_destroy (struct wusbhc*) ;
 int wusbhc_rh_create (struct wusbhc*) ;
 int wusbhc_rh_destroy (struct wusbhc*) ;
 int wusbhc_sec_create (struct wusbhc*) ;

int wusbhc_create(struct wusbhc *wusbhc)
{
 int result = 0;

 wusbhc->trust_timeout = WUSB_TRUST_TIMEOUT_MS;
 mutex_init(&wusbhc->mutex);
 result = wusbhc_mmcie_create(wusbhc);
 if (result < 0)
  goto error_mmcie_create;
 result = wusbhc_devconnect_create(wusbhc);
 if (result < 0)
  goto error_devconnect_create;
 result = wusbhc_rh_create(wusbhc);
 if (result < 0)
  goto error_rh_create;
 result = wusbhc_sec_create(wusbhc);
 if (result < 0)
  goto error_sec_create;
 return 0;

error_sec_create:
 wusbhc_rh_destroy(wusbhc);
error_rh_create:
 wusbhc_devconnect_destroy(wusbhc);
error_devconnect_create:
 wusbhc_mmcie_destroy(wusbhc);
error_mmcie_create:
 return result;
}
