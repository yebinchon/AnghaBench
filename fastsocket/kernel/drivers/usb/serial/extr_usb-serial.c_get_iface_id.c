
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {int id_table; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int dbg (char*) ;
 struct usb_device_id* match_dynamic_id (struct usb_interface*,struct usb_serial_driver*) ;
 struct usb_device_id* usb_match_id (struct usb_interface*,int ) ;

__attribute__((used)) static const struct usb_device_id *get_iface_id(struct usb_serial_driver *drv,
      struct usb_interface *intf)
{
 const struct usb_device_id *id;

 id = usb_match_id(intf, drv->id_table);
 if (id) {
  dbg("static descriptor matches");
  goto exit;
 }
 id = match_dynamic_id(intf, drv);
 if (id)
  dbg("dynamic descriptor matches");
exit:
 return id;
}
