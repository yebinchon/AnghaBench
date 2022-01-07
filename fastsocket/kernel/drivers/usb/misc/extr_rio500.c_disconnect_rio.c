
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct rio_usb_data {int lock; scalar_t__ present; int obuf; int ibuf; int * rio_dev; scalar_t__ isopen; } ;


 int dev_info (int *,char*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct rio_usb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_rio_class ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void disconnect_rio(struct usb_interface *intf)
{
 struct rio_usb_data *rio = usb_get_intfdata (intf);

 usb_set_intfdata (intf, ((void*)0));
 if (rio) {
  usb_deregister_dev(intf, &usb_rio_class);

  mutex_lock(&(rio->lock));
  if (rio->isopen) {
   rio->isopen = 0;

   rio->rio_dev = ((void*)0);
   mutex_unlock(&(rio->lock));
   return;
  }
  kfree(rio->ibuf);
  kfree(rio->obuf);

  dev_info(&intf->dev, "USB Rio disconnected.\n");

  rio->present = 0;
  mutex_unlock(&(rio->lock));
 }
}
