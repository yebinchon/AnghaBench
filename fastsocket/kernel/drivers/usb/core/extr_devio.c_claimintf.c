
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct dev_state {int ifclaimed; struct usb_device* dev; } ;


 int EINVAL ;
 int ENOENT ;
 int set_bit (unsigned int,int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int usb_driver_claim_interface (int *,struct usb_interface*,struct dev_state*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,unsigned int) ;
 int usbfs_driver ;

__attribute__((used)) static int claimintf(struct dev_state *ps, unsigned int ifnum)
{
 struct usb_device *dev = ps->dev;
 struct usb_interface *intf;
 int err;

 if (ifnum >= 8*sizeof(ps->ifclaimed))
  return -EINVAL;

 if (test_bit(ifnum, &ps->ifclaimed))
  return 0;

 intf = usb_ifnum_to_if(dev, ifnum);
 if (!intf)
  err = -ENOENT;
 else
  err = usb_driver_claim_interface(&usbfs_driver, intf, ps);
 if (err == 0)
  set_bit(ifnum, &ps->ifclaimed);
 return err;
}
