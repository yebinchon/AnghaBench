
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;


 int EINVAL ;
 int ENODEV ;
 int USB_US_TYPE (int ) ;
 int USB_US_TYPE_NONE ;
 int atomic_read (int *) ;
 int usu_bias ;

int usb_usual_check_type(const struct usb_device_id *id, int caller_type)
{
 int id_type = USB_US_TYPE(id->driver_info);

 if (caller_type <= 0 || caller_type >= 3)
  return -EINVAL;


 if (id_type == caller_type)
  return 0;

 if (id_type == USB_US_TYPE_NONE && caller_type == atomic_read(&usu_bias))
  return 0;
 return -ENODEV;
}
