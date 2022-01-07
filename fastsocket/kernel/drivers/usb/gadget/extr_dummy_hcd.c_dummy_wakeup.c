
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct dummy {int devstatus; int port_status; scalar_t__ rh_state; int resuming; scalar_t__ re_timeout; } ;
struct TYPE_2__ {int rh_timer; } ;


 scalar_t__ DUMMY_RH_SUSPENDED ;
 int EINVAL ;
 int EIO ;
 int ENOLINK ;
 int USB_DEVICE_B_HNP_ENABLE ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_SUSPEND ;
 TYPE_1__* dummy_to_hcd (struct dummy*) ;
 struct dummy* gadget_to_dummy (struct usb_gadget*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static int dummy_wakeup (struct usb_gadget *_gadget)
{
 struct dummy *dum;

 dum = gadget_to_dummy (_gadget);
 if (!(dum->devstatus & ( (1 << USB_DEVICE_B_HNP_ENABLE)
    | (1 << USB_DEVICE_REMOTE_WAKEUP))))
  return -EINVAL;
 if ((dum->port_status & USB_PORT_STAT_CONNECTION) == 0)
  return -ENOLINK;
 if ((dum->port_status & USB_PORT_STAT_SUSPEND) == 0 &&
    dum->rh_state != DUMMY_RH_SUSPENDED)
  return -EIO;




 dum->resuming = 1;
 dum->re_timeout = jiffies + msecs_to_jiffies(20);
 mod_timer (&dummy_to_hcd (dum)->rh_timer, dum->re_timeout);
 return 0;
}
