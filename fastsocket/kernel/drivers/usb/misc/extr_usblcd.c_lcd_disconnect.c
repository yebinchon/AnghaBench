
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {int kref; } ;
struct usb_interface {int minor; int dev; } ;


 int dev_info (int *,char*,int) ;
 int kref_put (int *,int ) ;
 int lcd_class ;
 int lcd_delete ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_disc_mutex ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_lcd* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void lcd_disconnect(struct usb_interface *interface)
{
 struct usb_lcd *dev;
        int minor = interface->minor;

 mutex_lock(&open_disc_mutex);
        dev = usb_get_intfdata(interface);
        usb_set_intfdata(interface, ((void*)0));
 mutex_unlock(&open_disc_mutex);


        usb_deregister_dev(interface, &lcd_class);


 kref_put(&dev->kref, lcd_delete);

 dev_info(&interface->dev, "USB LCD #%d now disconnected\n", minor);
}
