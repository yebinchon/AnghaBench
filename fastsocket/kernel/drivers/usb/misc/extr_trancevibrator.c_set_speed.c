
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct trancevibrator {int speed; TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int dev; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int ,int *,int ,int ) ;
 struct trancevibrator* usb_get_intfdata (struct usb_interface*) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static ssize_t set_speed(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct trancevibrator *tv = usb_get_intfdata(intf);
 int temp, retval, old;

 temp = simple_strtoul(buf, ((void*)0), 10);
 if (temp > 255)
  temp = 255;
 else if (temp < 0)
  temp = 0;
 old = tv->speed;
 tv->speed = temp;

 dev_dbg(&tv->udev->dev, "speed = %d\n", tv->speed);


 retval = usb_control_msg(tv->udev, usb_sndctrlpipe(tv->udev, 0),
     0x01,
     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
     tv->speed,
     0, ((void*)0), 0, USB_CTRL_GET_TIMEOUT);
 if (retval) {
  tv->speed = old;
  dev_dbg(&tv->udev->dev, "retval = %d\n", retval);
  return retval;
 }
 return count;
}
