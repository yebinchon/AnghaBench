
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int busnum; int bus_list; int controller; } ;
struct TYPE_2__ {int busmap; } ;


 TYPE_1__ busmap ;
 int clear_bit (int ,int ) ;
 int dev_info (int ,char*,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bus_list_lock ;
 int usb_notify_remove_bus (struct usb_bus*) ;

__attribute__((used)) static void usb_deregister_bus (struct usb_bus *bus)
{
 dev_info (bus->controller, "USB bus %d deregistered\n", bus->busnum);






 mutex_lock(&usb_bus_list_lock);
 list_del (&bus->bus_list);
 mutex_unlock(&usb_bus_list_lock);

 usb_notify_remove_bus(bus);

 clear_bit (bus->busnum, busmap.busmap);
}
