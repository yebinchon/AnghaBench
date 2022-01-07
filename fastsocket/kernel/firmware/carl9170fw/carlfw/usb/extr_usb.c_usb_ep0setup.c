
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ctrlrequest {int bRequestType; } ;
typedef int ctrl ;
struct TYPE_3__ {int ep0_action; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;


 int CARL9170_EP0_STALL ;
 int CARL9170_EP0_TRIGGER ;

 int USB_TYPE_MASK ;


 TYPE_2__ fw ;
 int usb_class_command (struct usb_ctrlrequest*) ;
 int usb_ep0rx_data (struct usb_ctrlrequest*,int) ;
 int usb_standard_command (struct usb_ctrlrequest*) ;
 int usb_vendor_command (struct usb_ctrlrequest*) ;

void usb_ep0setup(void)
{
 struct usb_ctrlrequest ctrl;
 int status = -1;
 usb_ep0rx_data(&ctrl, sizeof(ctrl));

 switch (ctrl.bRequestType & USB_TYPE_MASK) {
 case 129:
  status = usb_standard_command(&ctrl);
  break;

 case 130:
  status = usb_class_command(&ctrl);
  break;

 case 128:
  status = usb_vendor_command(&ctrl);
  break;

 default:
  break;

 }

 if (status < 0)
  fw.usb.ep0_action |= CARL9170_EP0_STALL;




}
