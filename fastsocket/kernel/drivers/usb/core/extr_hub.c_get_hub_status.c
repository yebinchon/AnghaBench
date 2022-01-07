
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub_status {int dummy; } ;
struct usb_device {int dummy; } ;


 int ETIMEDOUT ;
 int USB_DIR_IN ;
 int USB_REQ_GET_STATUS ;
 int USB_RT_HUB ;
 int USB_STS_RETRIES ;
 int USB_STS_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,struct usb_hub_status*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int get_hub_status(struct usb_device *hdev,
  struct usb_hub_status *data)
{
 int i, status = -ETIMEDOUT;

 for (i = 0; i < USB_STS_RETRIES && status == -ETIMEDOUT; i++) {
  status = usb_control_msg(hdev, usb_rcvctrlpipe(hdev, 0),
   USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_HUB, 0, 0,
   data, sizeof(*data), USB_STS_TIMEOUT);
 }
 return status;
}
