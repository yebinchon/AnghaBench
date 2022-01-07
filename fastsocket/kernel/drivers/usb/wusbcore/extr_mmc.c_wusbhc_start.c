
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int (* set_num_dnts ) (struct wusbhc*,int ,int) ;int * wuie_host_info; struct device* dev; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int dev_err (struct device*,char*,int) ;
 int stub1 (struct wusbhc*,int ,int) ;
 int wusbhc_devconnect_start (struct wusbhc*) ;
 int wusbhc_devconnect_stop (struct wusbhc*) ;
 int wusbhc_mmc_start (struct wusbhc*) ;
 int wusbhc_rsv_establish (struct wusbhc*) ;
 int wusbhc_rsv_terminate (struct wusbhc*) ;
 int wusbhc_sec_start (struct wusbhc*) ;
 int wusbhc_sec_stop (struct wusbhc*) ;

int wusbhc_start(struct wusbhc *wusbhc)
{
 int result;
 struct device *dev = wusbhc->dev;

 WARN_ON(wusbhc->wuie_host_info != ((void*)0));

 result = wusbhc_rsv_establish(wusbhc);
 if (result < 0) {
  dev_err(dev, "cannot establish cluster reservation: %d\n",
   result);
  goto error_rsv_establish;
 }

 result = wusbhc_devconnect_start(wusbhc);
 if (result < 0) {
  dev_err(dev, "error enabling device connections: %d\n", result);
  goto error_devconnect_start;
 }

 result = wusbhc_sec_start(wusbhc);
 if (result < 0) {
  dev_err(dev, "error starting security in the HC: %d\n", result);
  goto error_sec_start;
 }


 result = wusbhc->set_num_dnts(wusbhc, 0, 15);
 if (result < 0) {
  dev_err(dev, "Cannot set DNTS parameters: %d\n", result);
  goto error_set_num_dnts;
 }
 result = wusbhc_mmc_start(wusbhc);
 if (result < 0) {
  dev_err(dev, "error starting wusbch: %d\n", result);
  goto error_wusbhc_start;
 }

 return 0;

error_wusbhc_start:
 wusbhc_sec_stop(wusbhc);
error_set_num_dnts:
error_sec_start:
 wusbhc_devconnect_stop(wusbhc);
error_devconnect_start:
 wusbhc_rsv_terminate(wusbhc);
error_rsv_establish:
 return result;
}
