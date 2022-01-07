
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bLength; } ;
struct TYPE_3__ {TYPE_2__ descr; } ;
struct wusbhc {int gtk_index; TYPE_1__ gtk; } ;
struct wusb_dev {struct usb_device* usb_dev; } ;
struct usb_device {int dummy; } ;


 int USB_DIR_OUT ;
 int USB_DT_KEY ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_DESCRIPTOR ;
 int USB_TYPE_STANDARD ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,TYPE_2__*,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int wusb_dev_set_gtk(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 struct usb_device *usb_dev = wusb_dev->usb_dev;

 return usb_control_msg(
  usb_dev, usb_sndctrlpipe(usb_dev, 0),
  USB_REQ_SET_DESCRIPTOR,
  USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
  USB_DT_KEY << 8 | wusbhc->gtk_index, 0,
  &wusbhc->gtk.descr, wusbhc->gtk.descr.bLength,
  1000);
}
