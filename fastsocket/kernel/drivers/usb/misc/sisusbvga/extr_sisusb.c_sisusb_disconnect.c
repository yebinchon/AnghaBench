
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct sisusb_usb_data {int kref; int lock; scalar_t__ ready; scalar_t__ present; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sisusb_console_exit (struct sisusb_usb_data*) ;
 int sisusb_delete ;
 int sisusb_kill_all_busy (struct sisusb_usb_data*) ;
 int sisusb_wait_all_out_complete (struct sisusb_usb_data*) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct sisusb_usb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_sisusb_class ;

__attribute__((used)) static void sisusb_disconnect(struct usb_interface *intf)
{
 struct sisusb_usb_data *sisusb;


 if (!(sisusb = usb_get_intfdata(intf)))
  return;





 usb_deregister_dev(intf, &usb_sisusb_class);

 mutex_lock(&sisusb->lock);


 if (!sisusb_wait_all_out_complete(sisusb))
  sisusb_kill_all_busy(sisusb);

 usb_set_intfdata(intf, ((void*)0));

 sisusb->present = 0;
 sisusb->ready = 0;

 mutex_unlock(&sisusb->lock);


 kref_put(&sisusb->kref, sisusb_delete);
}
