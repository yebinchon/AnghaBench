
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* urb_listen; int interval; int buffer_listen; int ep_control_read; int usbdev; } ;
struct TYPE_3__ {scalar_t__ actual_length; } ;


 int GFP_KERNEL ;
 int LINE6_BUFSIZE_LISTEN ;
 int line6_data_received ;
 int usb_fill_int_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct usb_line6*,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int line6_start_listen(struct usb_line6 *line6)
{
 usb_fill_int_urb(line6->urb_listen, line6->usbdev,
    usb_rcvintpipe(line6->usbdev, line6->ep_control_read),
    line6->buffer_listen, LINE6_BUFSIZE_LISTEN,
    line6_data_received, line6, line6->interval);
 line6->urb_listen->actual_length = 0;
 return usb_submit_urb(line6->urb_listen, GFP_KERNEL);
}
