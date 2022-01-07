
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ctrlrequest {int bRequest; int wValue; int wLength; int wIndex; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {int dummy; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int ,int ,int ) ;
 int EOPNOTSUPP ;





 int le16_to_cpu (int ) ;

__attribute__((used)) static int audio_set_endpoint_req(struct usb_configuration *c,
  const struct usb_ctrlrequest *ctrl)
{
 struct usb_composite_dev *cdev = c->cdev;
 int value = -EOPNOTSUPP;
 u16 ep = le16_to_cpu(ctrl->wIndex);
 u16 len = le16_to_cpu(ctrl->wLength);
 u16 w_value = le16_to_cpu(ctrl->wValue);

 DBG(cdev, "bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\n",
   ctrl->bRequest, w_value, len, ep);

 switch (ctrl->bRequest) {
 case 132:
  value = 0;
  break;

 case 129:
  break;

 case 131:
  break;

 case 128:
  break;

 case 130:
  break;

 default:
  break;
 }

 return value;
}
