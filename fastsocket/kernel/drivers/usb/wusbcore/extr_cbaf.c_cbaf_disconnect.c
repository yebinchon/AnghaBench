
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct usb_interface {struct device dev; } ;
struct cbaf {int buffer; } ;


 int cbaf_dev_attr_group ;
 int kfree (int ) ;
 int kzfree (struct cbaf*) ;
 int sysfs_remove_group (int *,int *) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void cbaf_disconnect(struct usb_interface *iface)
{
 struct cbaf *cbaf = usb_get_intfdata(iface);
 struct device *dev = &iface->dev;
 sysfs_remove_group(&dev->kobj, &cbaf_dev_attr_group);
 usb_set_intfdata(iface, ((void*)0));
 usb_put_intf(iface);
 kfree(cbaf->buffer);

 kzfree(cbaf);
}
