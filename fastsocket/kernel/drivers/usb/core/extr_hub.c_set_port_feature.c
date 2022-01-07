
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_REQ_SET_FEATURE ;
 int USB_RT_PORT ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int set_port_feature(struct usb_device *hdev, int port1, int feature)
{
 return usb_control_msg(hdev, usb_sndctrlpipe(hdev, 0),
  USB_REQ_SET_FEATURE, USB_RT_PORT, feature, port1,
  ((void*)0), 0, 1000);
}
