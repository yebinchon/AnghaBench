
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_request {scalar_t__ buf; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wValue; int wIndex; } ;
struct fsg_dev {int new_config; int config; int gadget; struct usb_request* ep0req; } ;


 int CONFIG_VALUE ;
 int DELAYED_STATUS ;
 int EDOM ;
 int EOPNOTSUPP ;
 int FSG_STATE_CONFIG_CHANGE ;
 int FSG_STATE_INTERFACE_CHANGE ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;





 int USB_RECIP_DEVICE ;
 int USB_RECIP_INTERFACE ;





 int USB_TYPE_STANDARD ;
 int VDBG (struct fsg_dev*,char*,...) ;
 int dev_qualifier ;
 int device_desc ;
 int gadget_is_dualspeed (int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (scalar_t__,int *,int) ;
 int populate_config_buf (int ,scalar_t__,int,int) ;
 int raise_exception (struct fsg_dev*,int ) ;
 int stringtab ;
 int usb_gadget_get_string (int *,int,scalar_t__) ;

__attribute__((used)) static int standard_setup_req(struct fsg_dev *fsg,
  const struct usb_ctrlrequest *ctrl)
{
 struct usb_request *req = fsg->ep0req;
 int value = -EOPNOTSUPP;
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);



 switch (ctrl->bRequest) {

 case 131:
  if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
    USB_RECIP_DEVICE))
   break;
  switch (w_value >> 8) {

  case 136:
   VDBG(fsg, "get device descriptor\n");
   value = sizeof device_desc;
   memcpy(req->buf, &device_desc, value);
   break;
  case 135:
   VDBG(fsg, "get device qualifier\n");
   if (!gadget_is_dualspeed(fsg->gadget))
    break;
   value = sizeof dev_qualifier;
   memcpy(req->buf, &dev_qualifier, value);
   break;

  case 134:
   VDBG(fsg, "get other-speed config descriptor\n");
   if (!gadget_is_dualspeed(fsg->gadget))
    break;
   goto get_config;
  case 137:
   VDBG(fsg, "get configuration descriptor\n");
get_config:
   value = populate_config_buf(fsg->gadget,
     req->buf,
     w_value >> 8,
     w_value & 0xff);
   break;

  case 133:
   VDBG(fsg, "get string descriptor\n");


   value = usb_gadget_get_string(&stringtab,
     w_value & 0xff, req->buf);
   break;
  }
  break;


 case 129:
  if (ctrl->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD |
    USB_RECIP_DEVICE))
   break;
  VDBG(fsg, "set configuration\n");
  if (w_value == CONFIG_VALUE || w_value == 0) {
   fsg->new_config = w_value;



   raise_exception(fsg, FSG_STATE_CONFIG_CHANGE);
   value = DELAYED_STATUS;
  }
  break;
 case 132:
  if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
    USB_RECIP_DEVICE))
   break;
  VDBG(fsg, "get configuration\n");
  *(u8 *) req->buf = fsg->config;
  value = 1;
  break;

 case 128:
  if (ctrl->bRequestType != (USB_DIR_OUT| USB_TYPE_STANDARD |
    USB_RECIP_INTERFACE))
   break;
  if (fsg->config && w_index == 0) {




   raise_exception(fsg, FSG_STATE_INTERFACE_CHANGE);
   value = DELAYED_STATUS;
  }
  break;
 case 130:
  if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
    USB_RECIP_INTERFACE))
   break;
  if (!fsg->config)
   break;
  if (w_index != 0) {
   value = -EDOM;
   break;
  }
  VDBG(fsg, "get interface\n");
  *(u8 *) req->buf = 0;
  value = 1;
  break;

 default:
  VDBG(fsg,
   "unknown control req %02x.%02x v%04x i%04x l%u\n",
   ctrl->bRequestType, ctrl->bRequest,
   w_value, w_index, le16_to_cpu(ctrl->wLength));
 }

 return value;
}
