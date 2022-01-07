
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u16 ;


 int SWIMS_USB_REQUEST_SetSwocMode ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int US_DEBUGP (char*,char*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int sierra_set_ms_mode(struct usb_device *udev, __u16 eSWocMode)
{
 int result;
 US_DEBUGP("SWIMS: %s", "DEVICE MODE SWITCH\n");
 result = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
   SWIMS_USB_REQUEST_SetSwocMode,
   USB_TYPE_VENDOR | USB_DIR_OUT,
   eSWocMode,
   0x0000,
   ((void*)0),
   0,
   USB_CTRL_SET_TIMEOUT);
 return result;
}
