
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* transport_name; scalar_t__ max_lun; int transport_reset; int transport; } ;


 int freecom_transport ;
 int freecom_unusual_dev_list ;
 struct usb_device_id const* freecom_usb_ids ;
 int usb_stor_freecom_reset ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int freecom_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 result = usb_stor_probe1(&us, intf, id,
   (id - freecom_usb_ids) + freecom_unusual_dev_list);
 if (result)
  return result;

 us->transport_name = "Freecom";
 us->transport = freecom_transport;
 us->transport_reset = usb_stor_freecom_reset;
 us->max_lun = 0;

 result = usb_stor_probe2(us);
 return result;
}
