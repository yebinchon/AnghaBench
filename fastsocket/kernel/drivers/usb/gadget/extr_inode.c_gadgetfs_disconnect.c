
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dev_data {scalar_t__ state; int lock; } ;


 int GADGETFS_DISCONNECT ;
 int INFO (struct dev_data*,char*) ;
 scalar_t__ STATE_DEV_UNCONNECTED ;
 int ep0_readable (struct dev_data*) ;
 struct dev_data* get_gadget_data (struct usb_gadget*) ;
 int next_event (struct dev_data*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
gadgetfs_disconnect (struct usb_gadget *gadget)
{
 struct dev_data *dev = get_gadget_data (gadget);

 spin_lock (&dev->lock);
 if (dev->state == STATE_DEV_UNCONNECTED)
  goto exit;
 dev->state = STATE_DEV_UNCONNECTED;

 INFO (dev, "disconnected\n");
 next_event (dev, GADGETFS_DISCONNECT);
 ep0_readable (dev);
exit:
 spin_unlock (&dev->lock);
}
