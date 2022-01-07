
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int speed; scalar_t__ is_otg; } ;
struct printer_dev {unsigned int config; struct usb_gadget* gadget; } ;
struct TYPE_2__ {int bMaxPower; } ;



 int EINVAL ;
 int ESPIPE ;
 int INFO (struct printer_dev*,char*,...) ;


 TYPE_1__ config_desc ;
 int driver_desc ;
 scalar_t__ gadget_is_sa1100 (struct usb_gadget*) ;
 int usb_gadget_vbus_draw (struct usb_gadget*,unsigned int) ;

__attribute__((used)) static int
printer_set_config(struct printer_dev *dev, unsigned number)
{
 int result = 0;
 struct usb_gadget *gadget = dev->gadget;

 if (gadget_is_sa1100(gadget) && dev->config) {

  INFO(dev, "can't change configurations\n");
  return -ESPIPE;
 }

 switch (number) {
 case 130:
  result = 0;
  break;
 default:
  result = -EINVAL;

 case 0:
  break;
 }

 if (result) {
  usb_gadget_vbus_draw(dev->gadget,
    dev->gadget->is_otg ? 8 : 100);
 } else {
  char *speed;
  unsigned power;

  power = 2 * config_desc.bMaxPower;
  usb_gadget_vbus_draw(dev->gadget, power);

  switch (gadget->speed) {
  case 129: speed = "full"; break;



  default: speed = "?"; break;
  }

  dev->config = number;
  INFO(dev, "%s speed config #%d: %d mA, %s\n",
    speed, number, power, driver_desc);
 }
 return result;
}
