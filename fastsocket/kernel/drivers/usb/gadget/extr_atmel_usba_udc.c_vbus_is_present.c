
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int vbus_pin; } ;


 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;

__attribute__((used)) static int vbus_is_present(struct usba_udc *udc)
{
 if (gpio_is_valid(udc->vbus_pin))
  return gpio_get_value(udc->vbus_pin);


 return 1;
}
