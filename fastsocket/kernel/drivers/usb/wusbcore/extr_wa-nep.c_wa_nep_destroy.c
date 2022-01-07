
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int nep_buffer; int nep_urb; } ;


 int kfree (int ) ;
 int usb_free_urb (int ) ;
 int wa_nep_disarm (struct wahc*) ;

void wa_nep_destroy(struct wahc *wa)
{
 wa_nep_disarm(wa);
 usb_free_urb(wa->nep_urb);
 kfree(wa->nep_buffer);
}
