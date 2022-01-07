
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_request {int context; scalar_t__ buf; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wValue; int wLength; int wIndex; } ;
struct fsg_dev {struct usb_request* ep0req; int nluns; int config; } ;


 int DBG (struct fsg_dev*,char*) ;
 int DELAYED_STATUS ;
 int EDOM ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int FSG_STATE_RESET ;
 int MAX_COMMAND_SIZE ;



 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int VDBG (struct fsg_dev*,char*,...) ;
 int le16_to_cpu (int ) ;
 int raise_exception (struct fsg_dev*,int ) ;
 int received_cbi_adsc ;
 scalar_t__ transport_is_bbb () ;

__attribute__((used)) static int class_setup_req(struct fsg_dev *fsg,
  const struct usb_ctrlrequest *ctrl)
{
 struct usb_request *req = fsg->ep0req;
 int value = -EOPNOTSUPP;
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 if (!fsg->config)
  return value;


 if (transport_is_bbb()) {
  switch (ctrl->bRequest) {

  case 129:
   if (ctrl->bRequestType != (USB_DIR_OUT |
     USB_TYPE_CLASS | USB_RECIP_INTERFACE))
    break;
   if (w_index != 0 || w_value != 0) {
    value = -EDOM;
    break;
   }



   DBG(fsg, "bulk reset request\n");
   raise_exception(fsg, FSG_STATE_RESET);
   value = DELAYED_STATUS;
   break;

  case 130:
   if (ctrl->bRequestType != (USB_DIR_IN |
     USB_TYPE_CLASS | USB_RECIP_INTERFACE))
    break;
   if (w_index != 0 || w_value != 0) {
    value = -EDOM;
    break;
   }
   VDBG(fsg, "get max LUN\n");
   *(u8 *) req->buf = fsg->nluns - 1;
   value = 1;
   break;
  }
 }


 else {
  switch (ctrl->bRequest) {

  case 128:
   if (ctrl->bRequestType != (USB_DIR_OUT |
     USB_TYPE_CLASS | USB_RECIP_INTERFACE))
    break;
   if (w_index != 0 || w_value != 0) {
    value = -EDOM;
    break;
   }
   if (w_length > MAX_COMMAND_SIZE) {
    value = -EOVERFLOW;
    break;
   }
   value = w_length;
   fsg->ep0req->context = received_cbi_adsc;
   break;
  }
 }

 if (value == -EOPNOTSUPP)
  VDBG(fsg,
   "unknown class-specific control req "
   "%02x.%02x v%04x i%04x l%u\n",
   ctrl->bRequestType, ctrl->bRequest,
   le16_to_cpu(ctrl->wValue), w_index, w_length);
 return value;
}
