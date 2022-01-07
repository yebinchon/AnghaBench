
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct uhci_hcd {int rh_state; int lock; int wait_for_hp; scalar_t__ auto_stop_time; scalar_t__ dead; } ;


 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 scalar_t__ HZ ;





 int any_ports_active (struct uhci_hcd*) ;
 int get_hub_status_data (struct uhci_hcd*,char*) ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int suspend_rh (struct uhci_hcd*,int const) ;
 int time_after_eq (scalar_t__,scalar_t__) ;
 int uhci_check_ports (struct uhci_hcd*) ;
 int uhci_scan_schedule (struct uhci_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;
 int wakeup_rh (struct uhci_hcd*) ;

__attribute__((used)) static int uhci_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);
 unsigned long flags;
 int status = 0;

 spin_lock_irqsave(&uhci->lock, flags);

 uhci_scan_schedule(uhci);
 if (!HCD_HW_ACCESSIBLE(hcd) || uhci->dead)
  goto done;
 uhci_check_ports(uhci);

 status = get_hub_status_data(uhci, buf);

 switch (uhci->rh_state) {
     case 128:
     case 129:

  if (status)
   usb_hcd_resume_root_hub(hcd);
  break;

     case 132:

  if (status)
   wakeup_rh(uhci);
  break;

     case 131:

  if (!any_ports_active(uhci)) {
   uhci->rh_state = 130;
   uhci->auto_stop_time = jiffies + HZ;
  }
  break;

     case 130:

  if (any_ports_active(uhci))
   uhci->rh_state = 131;
  else if (time_after_eq(jiffies, uhci->auto_stop_time) &&
    !uhci->wait_for_hp)
   suspend_rh(uhci, 132);
  break;

     default:
  break;
 }

done:
 spin_unlock_irqrestore(&uhci->lock, flags);
 return status;
}
