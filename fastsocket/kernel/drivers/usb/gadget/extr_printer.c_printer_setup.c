
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_request {int length; int zero; scalar_t__ status; scalar_t__ buf; int (* complete ) (int ,struct usb_request*) ;} ;
struct usb_gadget {int ep0; int a_alt_hnp_support; int a_hnp_support; int is_otg; int speed; int is_dualspeed; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wValue; int wIndex; } ;
struct printer_dev {int printer_status; int interface; int config; struct usb_request* req; } ;


 int DBG (struct printer_dev*,char*,...) ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int PRINTER_INTERFACE ;
 int USB_DIR_IN ;





 int USB_RECIP_INTERFACE ;






 int USB_TYPE_MASK ;

 int VDBG (struct printer_dev*,char*,int,int ,int,int,int) ;
 int config_buf (int ,scalar_t__,int,int,int ) ;
 int dev_qualifier ;
 int device_desc ;
 struct printer_dev* get_gadget_data (struct usb_gadget*) ;
 int le16_to_cpu (int ) ;
 int memcpy (scalar_t__,int*,int) ;
 int min (int,int) ;
 int* pnp_string ;
 int printer_set_config (struct printer_dev*,int) ;
 int printer_setup_complete (int ,struct usb_request*) ;
 int printer_soft_reset (struct printer_dev*) ;
 int set_interface (struct printer_dev*,int) ;
 int stringtab ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;
 int usb_gadget_get_string (int *,int,scalar_t__) ;

__attribute__((used)) static int
printer_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
{
 struct printer_dev *dev = get_gadget_data(gadget);
 struct usb_request *req = dev->req;
 int value = -EOPNOTSUPP;
 u16 wIndex = le16_to_cpu(ctrl->wIndex);
 u16 wValue = le16_to_cpu(ctrl->wValue);
 u16 wLength = le16_to_cpu(ctrl->wLength);

 DBG(dev, "ctrl req%02x.%02x v%04x i%04x l%d\n",
  ctrl->bRequestType, ctrl->bRequest, wValue, wIndex, wLength);

 req->complete = printer_setup_complete;

 switch (ctrl->bRequestType&USB_TYPE_MASK) {

 case 128:
  switch (ctrl->bRequest) {

  case 133:
   if (ctrl->bRequestType != USB_DIR_IN)
    break;
   switch (wValue >> 8) {

   case 138:
    value = min(wLength, (u16) sizeof device_desc);
    memcpy(req->buf, &device_desc, value);
    break;
   case 139:
    value = config_buf(gadget->speed, req->buf,
      wValue >> 8,
      wValue & 0xff,
      gadget->is_otg);
    if (value >= 0)
     value = min(wLength, (u16) value);
    break;

   case 135:
    value = usb_gadget_get_string(&stringtab,
      wValue & 0xff, req->buf);
    if (value >= 0)
     value = min(wLength, (u16) value);
    break;
   }
   break;

  case 131:
   if (ctrl->bRequestType != 0)
    break;
   if (gadget->a_hnp_support)
    DBG(dev, "HNP available\n");
   else if (gadget->a_alt_hnp_support)
    DBG(dev, "HNP needs a different root port\n");
   value = printer_set_config(dev, wValue);
   break;
  case 134:
   if (ctrl->bRequestType != USB_DIR_IN)
    break;
   *(u8 *)req->buf = dev->config;
   value = min(wLength, (u16) 1);
   break;

  case 130:
   if (ctrl->bRequestType != USB_RECIP_INTERFACE ||
     !dev->config)
    break;

   value = set_interface(dev, PRINTER_INTERFACE);
   break;
  case 132:
   if (ctrl->bRequestType !=
     (USB_DIR_IN|USB_RECIP_INTERFACE)
     || !dev->config)
    break;

   *(u8 *)req->buf = dev->interface;
   value = min(wLength, (u16) 1);
   break;

  default:
   goto unknown;
  }
  break;

 case 129:
  switch (ctrl->bRequest) {
  case 0:

   if ((wIndex>>8) != PRINTER_INTERFACE)
    break;

   value = (pnp_string[0]<<8)|pnp_string[1];
   memcpy(req->buf, pnp_string, value);
   DBG(dev, "1284 PNP String: %x %s\n", value,
     &pnp_string[2]);
   break;

  case 1:

   if (wIndex != PRINTER_INTERFACE)
    break;

   *(u8 *)req->buf = dev->printer_status;
   value = min(wLength, (u16) 1);
   break;

  case 2:

   if (wIndex != PRINTER_INTERFACE)
    break;

   printer_soft_reset(dev);

   value = 0;
   break;

  default:
   goto unknown;
  }
  break;

 default:
unknown:
  VDBG(dev,
   "unknown ctrl req%02x.%02x v%04x i%04x l%d\n",
   ctrl->bRequestType, ctrl->bRequest,
   wValue, wIndex, wLength);
  break;
 }


 if (value >= 0) {
  req->length = value;
  req->zero = value < wLength;
  value = usb_ep_queue(gadget->ep0, req, GFP_ATOMIC);
  if (value < 0) {
   DBG(dev, "ep_queue --> %d\n", value);
   req->status = 0;
   printer_setup_complete(gadget->ep0, req);
  }
 }


 return value;
}
