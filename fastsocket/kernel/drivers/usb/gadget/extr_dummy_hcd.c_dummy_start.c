
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int otg_port; } ;
struct usb_hcd {int uses_new_polling; TYPE_1__ self; int state; int power_budget; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct dummy {int urbp_list; int rh_state; TYPE_2__ timer; int lock; } ;


 int DUMMY_RH_RUNNING ;
 int HC_STATE_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 int POWER_BUDGET ;
 int dev_attr_urbs ;
 int device_create_file (int ,int *) ;
 int dummy_dev (struct dummy*) ;
 int dummy_timer ;
 struct dummy* hcd_to_dummy (struct usb_hcd*) ;
 int init_timer (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dummy_start (struct usb_hcd *hcd)
{
 struct dummy *dum;

 dum = hcd_to_dummy (hcd);






 spin_lock_init (&dum->lock);
 init_timer (&dum->timer);
 dum->timer.function = dummy_timer;
 dum->timer.data = (unsigned long) dum;
 dum->rh_state = DUMMY_RH_RUNNING;

 INIT_LIST_HEAD (&dum->urbp_list);

 hcd->power_budget = POWER_BUDGET;
 hcd->state = HC_STATE_RUNNING;
 hcd->uses_new_polling = 1;






 return device_create_file (dummy_dev(dum), &dev_attr_urbs);
}
