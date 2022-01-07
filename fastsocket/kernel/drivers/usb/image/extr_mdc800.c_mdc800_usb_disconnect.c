
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct mdc800_data {scalar_t__ state; int * dev; int io_lock; int download_urb; int write_urb; int irq_urb; } ;


 scalar_t__ NOT_CONNECTED ;
 int dbg (char*) ;
 int dev_info (int *,char*) ;
 int mdc800_class ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct mdc800_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mdc800_usb_disconnect (struct usb_interface *intf)
{
 struct mdc800_data* mdc800 = usb_get_intfdata(intf);

 dbg ("(mdc800_usb_disconnect) called");

 if (mdc800) {
  if (mdc800->state == NOT_CONNECTED)
   return;

  usb_deregister_dev(intf, &mdc800_class);



  mutex_lock(&mdc800->io_lock);
  mdc800->state=NOT_CONNECTED;

  usb_kill_urb(mdc800->irq_urb);
  usb_kill_urb(mdc800->write_urb);
  usb_kill_urb(mdc800->download_urb);
  mutex_unlock(&mdc800->io_lock);

  mdc800->dev = ((void*)0);
  usb_set_intfdata(intf, ((void*)0));
 }
 dev_info(&intf->dev, "Mustek MDC800 disconnected from USB.\n");
}
