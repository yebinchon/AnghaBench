
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtmc_device_data {int zombie; int kref; int io_mutex; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;


 int capability_attr_grp ;
 int data_attr_grp ;
 int dev_dbg (TYPE_1__*,char*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;
 int usbtmc_class ;
 int usbtmc_delete ;

__attribute__((used)) static void usbtmc_disconnect(struct usb_interface *intf)
{
 struct usbtmc_device_data *data;

 dev_dbg(&intf->dev, "usbtmc_disconnect called\n");

 data = usb_get_intfdata(intf);
 usb_deregister_dev(intf, &usbtmc_class);
 sysfs_remove_group(&intf->dev.kobj, &capability_attr_grp);
 sysfs_remove_group(&intf->dev.kobj, &data_attr_grp);
 mutex_lock(&data->io_mutex);
 data->zombie = 1;
 mutex_unlock(&data->io_mutex);
 kref_put(&data->kref, usbtmc_delete);
}
