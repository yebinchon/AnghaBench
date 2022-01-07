
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct appledisplay {int* msgdata; int udev; } ;


 int ACD_USB_BRIGHTNESS ;
 int ACD_USB_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_REPORT ;
 int USB_TYPE_CLASS ;
 struct appledisplay* bl_get_data (struct backlight_device*) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int appledisplay_bl_get_brightness(struct backlight_device *bd)
{
 struct appledisplay *pdata = bl_get_data(bd);
 int retval;

 retval = usb_control_msg(
  pdata->udev,
  usb_rcvctrlpipe(pdata->udev, 0),
  USB_REQ_GET_REPORT,
  USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  ACD_USB_BRIGHTNESS,
  0,
  pdata->msgdata, 2,
  ACD_USB_TIMEOUT);

 if (retval < 0)
  return retval;
 else
  return pdata->msgdata[1];
}
