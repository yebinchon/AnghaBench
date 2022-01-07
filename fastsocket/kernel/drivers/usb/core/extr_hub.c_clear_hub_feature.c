
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_REQ_CLEAR_FEATURE ;
 int USB_RT_HUB ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int clear_hub_feature(struct usb_device *hdev, int feature)
{
 return usb_control_msg(hdev, usb_sndctrlpipe(hdev, 0),
  USB_REQ_CLEAR_FEATURE, USB_RT_HUB, feature, 0, ((void*)0), 0, 1000);
}
