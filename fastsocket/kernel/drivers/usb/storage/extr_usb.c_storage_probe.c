
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {int dummy; } ;


 int ENXIO ;
 int USB_US_TYPE_STOR ;
 int us_unusual_dev_list ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int) ;
 int usb_stor_probe2 (struct us_data*) ;
 struct usb_device_id const* usb_storage_usb_ids ;
 scalar_t__ usb_usual_check_type (struct usb_device_id const*,int ) ;
 scalar_t__ usb_usual_ignore_device (struct usb_interface*) ;

__attribute__((used)) static int storage_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;







 if (usb_usual_check_type(id, USB_US_TYPE_STOR) ||
   usb_usual_ignore_device(intf))
  return -ENXIO;
 result = usb_stor_probe1(&us, intf, id,
   (id - usb_storage_usb_ids) + us_unusual_dev_list);
 if (result)
  return result;



 result = usb_stor_probe2(us);
 return result;
}
