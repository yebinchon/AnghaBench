
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int interval; int pipe; int transfer_buffer_length; int dev; int * setup_packet; } ;
struct c67x00_hcd {int dummy; } ;





 int USB_PID_IN ;
 int USB_PID_OUT ;
 int USB_PID_SETUP ;
 int c67x00_add_data_urb (struct c67x00_hcd*,struct urb*) ;
 int c67x00_create_td (struct c67x00_hcd*,struct urb*,int *,int,int,int,int const) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeout (int ) ;
 int usb_settoggle (int ,int ,int ,int) ;

__attribute__((used)) static int c67x00_add_ctrl_urb(struct c67x00_hcd *c67x00, struct urb *urb)
{
 int ret;
 int pid;

 switch (urb->interval) {
 default:
 case 129:
  ret = c67x00_create_td(c67x00, urb, urb->setup_packet,
           8, USB_PID_SETUP, 0, 129);
  if (ret)
   return ret;
  urb->interval = 129;
  usb_settoggle(urb->dev, usb_pipeendpoint(urb->pipe),
         usb_pipeout(urb->pipe), 1);
  break;
 case 130:
  if (urb->transfer_buffer_length) {
   ret = c67x00_add_data_urb(c67x00, urb);
   if (ret)
    return ret;
   break;
  }
 case 128:
  pid = !usb_pipeout(urb->pipe) ? USB_PID_OUT : USB_PID_IN;
  ret = c67x00_create_td(c67x00, urb, ((void*)0), 0, pid, 1,
           128);
  if (ret)
   return ret;
  break;
 }

 return 0;
}
