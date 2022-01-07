
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; int cluster_id; } ;
struct usb_hcd {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int wusb_cluster_id_put (int ) ;

__attribute__((used)) static void hwahc_op_stop(struct usb_hcd *usb_hcd)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);

 mutex_lock(&wusbhc->mutex);
 wusb_cluster_id_put(wusbhc->cluster_id);
 mutex_unlock(&wusbhc->mutex);
}
