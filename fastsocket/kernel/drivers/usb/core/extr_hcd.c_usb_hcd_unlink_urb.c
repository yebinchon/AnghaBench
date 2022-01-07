
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* dev; int use_count; } ;
struct TYPE_3__ {int dev; int bus; } ;


 int EBUSY ;
 int EIDRM ;
 int EINPROGRESS ;
 scalar_t__ atomic_read (int *) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int dev_dbg (int *,char*,struct urb*,int) ;
 int hcd_urb_unlink_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink1 (struct usb_hcd*,struct urb*,int) ;
 int usb_get_dev (TYPE_1__*) ;
 int usb_put_dev (TYPE_1__*) ;

int usb_hcd_unlink_urb (struct urb *urb, int status)
{
 struct usb_hcd *hcd;
 int retval = -EIDRM;
 unsigned long flags;






 spin_lock_irqsave(&hcd_urb_unlink_lock, flags);
 if (atomic_read(&urb->use_count) > 0) {
  retval = 0;
  usb_get_dev(urb->dev);
 }
 spin_unlock_irqrestore(&hcd_urb_unlink_lock, flags);
 if (retval == 0) {
  hcd = bus_to_hcd(urb->dev->bus);
  retval = unlink1(hcd, urb, status);
  usb_put_dev(urb->dev);
 }

 if (retval == 0)
  retval = -EINPROGRESS;
 else if (retval != -EIDRM && retval != -EBUSY)
  dev_dbg(&urb->dev->dev, "hcd_unlink_urb %p fail %d\n",
    urb, retval);
 return retval;
}
