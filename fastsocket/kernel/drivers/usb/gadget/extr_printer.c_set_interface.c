
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {int interface; int gadget; } ;


 int EINVAL ;
 int ESPIPE ;
 int INFO (struct printer_dev*,char*,...) ;

 scalar_t__ gadget_is_sa1100 (int ) ;
 int printer_reset_interface (struct printer_dev*) ;
 int set_printer_interface (struct printer_dev*) ;

__attribute__((used)) static int
set_interface(struct printer_dev *dev, unsigned number)
{
 int result = 0;

 if (gadget_is_sa1100(dev->gadget) && dev->interface < 0) {

  INFO(dev, "can't change interfaces\n");
  return -ESPIPE;
 }


 switch (dev->interface) {
 case 128:
  printer_reset_interface(dev);
  break;
 }

 switch (number) {
 case 128:
  result = set_printer_interface(dev);
  if (result) {
   printer_reset_interface(dev);
  } else {
   dev->interface = 128;
  }
  break;
 default:
  result = -EINVAL;

 }

 if (!result)
  INFO(dev, "Using interface %x\n", number);

 return result;
}
