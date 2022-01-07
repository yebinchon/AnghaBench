
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy {int dummy; } ;
struct device {int dummy; } ;


 int dummy_to_hcd (struct dummy*) ;
 struct dummy* gadget_dev_to_dummy (struct device*) ;
 int usb_put_hcd (int ) ;

__attribute__((used)) static void
dummy_gadget_release (struct device *dev)
{
 struct dummy *dum = gadget_dev_to_dummy (dev);

 usb_put_hcd (dummy_to_hcd (dum));
}
