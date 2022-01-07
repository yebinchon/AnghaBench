
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int uses_new_polling; int flags; int state; } ;


 int HCD_FLAG_POLL_RH ;
 int HC_STATE_RUNNING ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int c67x00_hcd_start(struct usb_hcd *hcd)
{
 hcd->uses_new_polling = 1;
 hcd->state = HC_STATE_RUNNING;
 set_bit(HCD_FLAG_POLL_RH, &hcd->flags);

 return 0;
}
