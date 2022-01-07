
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int speed; } ;
struct gmidi_device {unsigned int config; int out_ep; int in_ep; struct usb_gadget* gadget; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENODEV ;
 int ERROR (struct gmidi_device*,char*) ;
 int ESPIPE ;

 int INFO (struct gmidi_device*,char*,char*) ;



 scalar_t__ gadget_is_sa1100 (struct usb_gadget*) ;
 int gmidi_reset_config (struct gmidi_device*) ;
 int set_gmidi_config (struct gmidi_device*,int ) ;

__attribute__((used)) static int
gmidi_set_config(struct gmidi_device *dev, unsigned number, gfp_t gfp_flags)
{
 int result = 0;
 struct usb_gadget *gadget = dev->gadget;
 if (gadget_is_sa1100(gadget) && dev->config) {

  ERROR(dev, "can't change configurations\n");
  return -ESPIPE;
 }
 gmidi_reset_config(dev);

 switch (number) {
 case 131:
  result = set_gmidi_config(dev, gfp_flags);
  break;
 default:
  result = -EINVAL;

 case 0:
  return result;
 }

 if (!result && (!dev->in_ep || !dev->out_ep)) {
  result = -ENODEV;
 }
 if (result) {
  gmidi_reset_config(dev);
 } else {
  char *speed;

  switch (gadget->speed) {
  case 128: speed = "low"; break;
  case 130: speed = "full"; break;
  case 129: speed = "high"; break;
  default: speed = "?"; break;
  }

  dev->config = number;
  INFO(dev, "%s speed\n", speed);
 }
 return result;
}
