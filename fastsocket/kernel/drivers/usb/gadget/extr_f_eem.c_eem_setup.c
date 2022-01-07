
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_function {TYPE_1__* config; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wValue; int wIndex; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int ,int ,int ,int ) ;
 int EOPNOTSUPP ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int eem_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
{
 struct usb_composite_dev *cdev = f->config->cdev;
 int value = -EOPNOTSUPP;
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 DBG(cdev, "invalid control req%02x.%02x v%04x i%04x l%d\n",
  ctrl->bRequestType, ctrl->bRequest,
  w_value, w_index, w_length);


 return value;
}
