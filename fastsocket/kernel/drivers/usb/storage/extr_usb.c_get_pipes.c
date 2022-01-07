
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int bInterval; } ;
struct us_data {scalar_t__ protocol; int ep_bInterval; int pusb_dev; int recv_intr_pipe; int recv_bulk_pipe; int send_bulk_pipe; int recv_ctrl_pipe; int send_ctrl_pipe; TYPE_1__* pusb_intf; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_4__ {struct usb_host_interface* cur_altsetting; } ;


 int EIO ;
 int US_DEBUGP (char*) ;
 scalar_t__ US_PR_CBI ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int get_pipes(struct us_data *us)
{
 struct usb_host_interface *altsetting =
  us->pusb_intf->cur_altsetting;
 int i;
 struct usb_endpoint_descriptor *ep;
 struct usb_endpoint_descriptor *ep_in = ((void*)0);
 struct usb_endpoint_descriptor *ep_out = ((void*)0);
 struct usb_endpoint_descriptor *ep_int = ((void*)0);







 for (i = 0; i < altsetting->desc.bNumEndpoints; i++) {
  ep = &altsetting->endpoint[i].desc;

  if (usb_endpoint_xfer_bulk(ep)) {
   if (usb_endpoint_dir_in(ep)) {
    if (!ep_in)
     ep_in = ep;
   } else {
    if (!ep_out)
     ep_out = ep;
   }
  }

  else if (usb_endpoint_is_int_in(ep)) {
   if (!ep_int)
    ep_int = ep;
  }
 }

 if (!ep_in || !ep_out || (us->protocol == US_PR_CBI && !ep_int)) {
  US_DEBUGP("Endpoint sanity check failed! Rejecting dev.\n");
  return -EIO;
 }


 us->send_ctrl_pipe = usb_sndctrlpipe(us->pusb_dev, 0);
 us->recv_ctrl_pipe = usb_rcvctrlpipe(us->pusb_dev, 0);
 us->send_bulk_pipe = usb_sndbulkpipe(us->pusb_dev,
  usb_endpoint_num(ep_out));
 us->recv_bulk_pipe = usb_rcvbulkpipe(us->pusb_dev,
  usb_endpoint_num(ep_in));
 if (ep_int) {
  us->recv_intr_pipe = usb_rcvintpipe(us->pusb_dev,
   usb_endpoint_num(ep_int));
  us->ep_bInterval = ep_int->bInterval;
 }
 return 0;
}
