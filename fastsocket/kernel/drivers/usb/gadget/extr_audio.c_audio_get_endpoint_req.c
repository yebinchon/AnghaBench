
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_ctrlrequest {int bRequest; int wValue; int wLength; int wIndex; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {int dummy; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int,int,int) ;
 int EOPNOTSUPP ;





 int le16_to_cpu (int ) ;

__attribute__((used)) static int audio_get_endpoint_req(struct usb_configuration *c,
  const struct usb_ctrlrequest *ctrl)
{
 struct usb_composite_dev *cdev = c->cdev;
 int value = -EOPNOTSUPP;
 u8 ep = ((le16_to_cpu(ctrl->wIndex) >> 8) & 0xFF);
 u16 len = le16_to_cpu(ctrl->wLength);
 u16 w_value = le16_to_cpu(ctrl->wValue);

 DBG(cdev, "bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\n",
   ctrl->bRequest, w_value, len, ep);

 switch (ctrl->bRequest) {
 case 132:
 case 129:
 case 131:
 case 128:
  value = 3;
  break;
 case 130:
  break;
 default:
  break;
 }

 return value;
}
