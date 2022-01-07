
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int usb_hcd; } ;
struct wusb_dev {int devconnect_acked_work; int cack_node; int entry_ts; } ;
struct urb {int dev; } ;


 struct wusb_dev* __wusb_dev_get_by_usb_dev (struct wusbhc*,int ) ;
 int jiffies ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int usb_hcd_giveback_urb (int *,struct urb*,int) ;
 int wusb_dev_put (struct wusb_dev*) ;
 int wusbd ;

void wusbhc_giveback_urb(struct wusbhc *wusbhc, struct urb *urb, int status)
{
 struct wusb_dev *wusb_dev = __wusb_dev_get_by_usb_dev(wusbhc, urb->dev);

 if (status == 0 && wusb_dev) {
  wusb_dev->entry_ts = jiffies;



  if (!list_empty(&wusb_dev->cack_node))
   queue_work(wusbd, &wusb_dev->devconnect_acked_work);
  else
   wusb_dev_put(wusb_dev);
 }

 usb_hcd_giveback_urb(&wusbhc->usb_hcd, urb, status);
}
