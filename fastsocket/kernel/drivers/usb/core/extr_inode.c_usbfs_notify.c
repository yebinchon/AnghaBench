
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;




 int usbfs_add_bus (void*) ;
 int usbfs_add_device (void*) ;
 int usbfs_conn_disc_event () ;
 int usbfs_remove_bus (void*) ;
 int usbfs_remove_device (void*) ;
 int usbfs_update_special () ;

__attribute__((used)) static int usbfs_notify(struct notifier_block *self, unsigned long action, void *dev)
{
 switch (action) {
 case 129:
  usbfs_add_device(dev);
  break;
 case 128:
  usbfs_remove_device(dev);
  break;
 case 131:
  usbfs_add_bus(dev);
  break;
 case 130:
  usbfs_remove_bus(dev);
 }

 usbfs_update_special();
 usbfs_conn_disc_event();
 return NOTIFY_OK;
}
