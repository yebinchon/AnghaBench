
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dev_data {int state; int lock; } ;


 int GADGETFS_SUSPEND ;
 int INFO (struct dev_data*,char*,int) ;



 int ep0_readable (struct dev_data*) ;
 struct dev_data* get_gadget_data (struct usb_gadget*) ;
 int next_event (struct dev_data*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
gadgetfs_suspend (struct usb_gadget *gadget)
{
 struct dev_data *dev = get_gadget_data (gadget);

 INFO (dev, "suspended from state %d\n", dev->state);
 spin_lock (&dev->lock);
 switch (dev->state) {
 case 129:
 case 130:
 case 128:
  next_event (dev, GADGETFS_SUSPEND);
  ep0_readable (dev);

 default:
  break;
 }
 spin_unlock (&dev->lock);
}
