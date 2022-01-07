
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bLength; } ;
struct TYPE_4__ {TYPE_1__ descr; } ;
struct wusbhc {int gtk_index; TYPE_2__ gtk; } ;
struct wusb_dev {struct usb_ctrlrequest* set_gtk_req; struct urb* set_gtk_urb; int devconnect_acked_work; struct wusbhc* wusbhc; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; scalar_t__ wIndex; void* wValue; int bRequest; } ;
struct urb {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int USB_DIR_OUT ;
 int USB_DT_KEY ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_DESCRIPTOR ;
 int USB_TYPE_STANDARD ;
 void* cpu_to_le16 (int) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 struct wusb_dev* kzalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int wusb_dev_free (struct wusb_dev*) ;
 int wusbhc_devconnect_acked_work ;

__attribute__((used)) static struct wusb_dev *wusb_dev_alloc(struct wusbhc *wusbhc)
{
 struct wusb_dev *wusb_dev;
 struct urb *urb;
 struct usb_ctrlrequest *req;

 wusb_dev = kzalloc(sizeof(*wusb_dev), GFP_KERNEL);
 if (wusb_dev == ((void*)0))
  goto err;

 wusb_dev->wusbhc = wusbhc;

 INIT_WORK(&wusb_dev->devconnect_acked_work, wusbhc_devconnect_acked_work);

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (urb == ((void*)0))
  goto err;

 req = kmalloc(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
 if (req == ((void*)0))
  goto err;

 req->bRequestType = USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE;
 req->bRequest = USB_REQ_SET_DESCRIPTOR;
 req->wValue = cpu_to_le16(USB_DT_KEY << 8 | wusbhc->gtk_index);
 req->wIndex = 0;
 req->wLength = cpu_to_le16(wusbhc->gtk.descr.bLength);

 wusb_dev->set_gtk_urb = urb;
 wusb_dev->set_gtk_req = req;

 return wusb_dev;
err:
 wusb_dev_free(wusb_dev);
 return ((void*)0);
}
