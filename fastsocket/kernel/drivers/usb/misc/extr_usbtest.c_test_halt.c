
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;
struct urb {int pipe; int dev; } ;


 int ERROR (struct usbtest_dev*,char*,int,int) ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_SET_FEATURE ;
 int usb_clear_halt (int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int verify_halted (struct usbtest_dev*,int,struct urb*) ;
 int verify_not_halted (struct usbtest_dev*,int,struct urb*) ;

__attribute__((used)) static int test_halt(struct usbtest_dev *tdev, int ep, struct urb *urb)
{
 int retval;


 retval = verify_not_halted(tdev, ep, urb);
 if (retval < 0)
  return retval;


 retval = usb_control_msg (urb->dev, usb_sndctrlpipe (urb->dev, 0),
   USB_REQ_SET_FEATURE, USB_RECIP_ENDPOINT,
   USB_ENDPOINT_HALT, ep,
   ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 if (retval < 0) {
  ERROR(tdev, "ep %02x couldn't set halt, %d\n", ep, retval);
  return retval;
 }
 retval = verify_halted(tdev, ep, urb);
 if (retval < 0)
  return retval;


 retval = usb_clear_halt (urb->dev, urb->pipe);
 if (retval < 0) {
  ERROR(tdev, "ep %02x couldn't clear halt, %d\n", ep, retval);
  return retval;
 }
 retval = verify_not_halted(tdev, ep, urb);
 if (retval < 0)
  return retval;



 return 0;
}
