
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int used; int mut; int rwait; int wwait; scalar_t__ present; int dev; } ;
struct usb_interface {int dev; } ;


 int BUG () ;
 int dev_attr_ieee1284_id ;
 int dev_err (int *,char*) ;
 int device_remove_file (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usblp* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usblp_class ;
 int usblp_cleanup (struct usblp*) ;
 int usblp_mutex ;
 int usblp_unlink_urbs (struct usblp*) ;
 int wake_up (int *) ;

__attribute__((used)) static void usblp_disconnect(struct usb_interface *intf)
{
 struct usblp *usblp = usb_get_intfdata (intf);

 usb_deregister_dev(intf, &usblp_class);

 if (!usblp || !usblp->dev) {
  dev_err(&intf->dev, "bogus disconnect\n");
  BUG ();
 }

 device_remove_file(&intf->dev, &dev_attr_ieee1284_id);

 mutex_lock (&usblp_mutex);
 mutex_lock (&usblp->mut);
 usblp->present = 0;
 wake_up(&usblp->wwait);
 wake_up(&usblp->rwait);
 usb_set_intfdata (intf, ((void*)0));

 usblp_unlink_urbs(usblp);
 mutex_unlock (&usblp->mut);

 if (!usblp->used)
  usblp_cleanup (usblp);
 mutex_unlock (&usblp_mutex);
}
