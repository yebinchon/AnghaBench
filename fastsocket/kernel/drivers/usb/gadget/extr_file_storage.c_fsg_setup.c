
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_gadget {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct fsg_dev {char* ep0req_name; TYPE_1__* ep0req; int ep0_req_tag; } ;
struct TYPE_2__ {int length; int zero; int * context; } ;


 int DELAYED_STATUS ;
 int USB_DIR_IN ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 int class_setup_req (struct fsg_dev*,struct usb_ctrlrequest const*) ;
 int dump_msg (struct fsg_dev*,char*,int *,int) ;
 int ep0_queue (struct fsg_dev*) ;
 struct fsg_dev* get_gadget_data (struct usb_gadget*) ;
 int le16_to_cpu (int ) ;
 int min (int,int) ;
 int standard_setup_req (struct fsg_dev*,struct usb_ctrlrequest const*) ;

__attribute__((used)) static int fsg_setup(struct usb_gadget *gadget,
  const struct usb_ctrlrequest *ctrl)
{
 struct fsg_dev *fsg = get_gadget_data(gadget);
 int rc;
 int w_length = le16_to_cpu(ctrl->wLength);

 ++fsg->ep0_req_tag;
 fsg->ep0req->context = ((void*)0);
 fsg->ep0req->length = 0;
 dump_msg(fsg, "ep0-setup", (u8 *) ctrl, sizeof(*ctrl));

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_CLASS)
  rc = class_setup_req(fsg, ctrl);
 else
  rc = standard_setup_req(fsg, ctrl);


 if (rc >= 0 && rc != DELAYED_STATUS) {
  rc = min(rc, w_length);
  fsg->ep0req->length = rc;
  fsg->ep0req->zero = rc < w_length;
  fsg->ep0req_name = (ctrl->bRequestType & USB_DIR_IN ?
    "ep0-in" : "ep0-out");
  rc = ep0_queue(fsg);
 }


 return rc;
}
