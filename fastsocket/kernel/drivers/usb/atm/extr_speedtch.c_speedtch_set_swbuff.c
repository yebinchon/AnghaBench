
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct usb_device* usb_dev; } ;
struct usb_device {int dummy; } ;
struct speedtch_instance_data {struct usbatm_data* usbatm; } ;


 int CTRL_TIMEOUT ;
 int dbg (char*,char*) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_warn (struct usbatm_data*,char*,char*,int) ;

__attribute__((used)) static void speedtch_set_swbuff(struct speedtch_instance_data *instance, int state)
{
 struct usbatm_data *usbatm = instance->usbatm;
 struct usb_device *usb_dev = usbatm->usb_dev;
 int ret;

 ret = usb_control_msg(usb_dev, usb_sndctrlpipe(usb_dev, 0),
         0x32, 0x40, state ? 0x01 : 0x00, 0x00, ((void*)0), 0, CTRL_TIMEOUT);
 if (ret < 0)
  usb_warn(usbatm,
    "%sabling SW buffering: usb_control_msg returned %d\n",
    state ? "En" : "Dis", ret);
 else
  dbg("speedtch_set_swbuff: %sbled SW buffering", state ? "En" : "Dis");
}
