
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int set_gtk_urb; struct wusb_dev* set_gtk_req; } ;


 int kfree (struct wusb_dev*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void wusb_dev_free(struct wusb_dev *wusb_dev)
{
 if (wusb_dev) {
  kfree(wusb_dev->set_gtk_req);
  usb_free_urb(wusb_dev->set_gtk_urb);
  kfree(wusb_dev);
 }
}
