
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int pusb_dev; int dflags; int pusb_intf; } ;


 int EIO ;
 int US_DEBUGP (char*,...) ;
 int US_FLIDX_DISCONNECTING ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_lock_device_for_reset (int ,int ) ;
 int usb_reset_device (int ) ;
 int usb_unlock_device (int ) ;

int usb_stor_port_reset(struct us_data *us)
{
 int result;

 result = usb_lock_device_for_reset(us->pusb_dev, us->pusb_intf);
 if (result < 0)
  US_DEBUGP("unable to lock device for reset: %d\n", result);
 else {

  if (test_bit(US_FLIDX_DISCONNECTING, &us->dflags)) {
   result = -EIO;
   US_DEBUGP("No reset during disconnect\n");
  } else {
   result = usb_reset_device(us->pusb_dev);
   US_DEBUGP("usb_reset_device returns %d\n",
     result);
  }
  usb_unlock_device(us->pusb_dev);
 }
 return result;
}
