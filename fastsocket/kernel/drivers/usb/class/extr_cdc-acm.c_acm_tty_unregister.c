
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acm {int rx_buflimit; size_t minor; struct acm* country_codes; TYPE_2__* ru; TYPE_1__* wb; int ctrlurb; int control; } ;
struct TYPE_4__ {int urb; } ;
struct TYPE_3__ {int urb; } ;


 int ACM_NW ;
 int ** acm_table ;
 int acm_tty_driver ;
 int kfree (struct acm*) ;
 int tty_unregister_device (int ,size_t) ;
 int usb_free_urb (int ) ;
 int usb_put_intf (int ) ;

__attribute__((used)) static void acm_tty_unregister(struct acm *acm)
{
 int i, nr;

 nr = acm->rx_buflimit;
 tty_unregister_device(acm_tty_driver, acm->minor);
 usb_put_intf(acm->control);
 acm_table[acm->minor] = ((void*)0);
 usb_free_urb(acm->ctrlurb);
 for (i = 0; i < ACM_NW; i++)
  usb_free_urb(acm->wb[i].urb);
 for (i = 0; i < nr; i++)
  usb_free_urb(acm->ru[i].urb);
 kfree(acm->country_codes);
 kfree(acm);
}
