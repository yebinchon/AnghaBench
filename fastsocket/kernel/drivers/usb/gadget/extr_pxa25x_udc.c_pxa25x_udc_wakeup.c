
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int EHOSTUNREACH ;
 int UDCCR_RSM ;
 int UDCCS0 ;
 int UDCCS0_DRWF ;
 int udc_set_mask_UDCCR (int ) ;

__attribute__((used)) static int pxa25x_udc_wakeup(struct usb_gadget *_gadget)
{

 if ((UDCCS0 & UDCCS0_DRWF) == 0)
  return -EHOSTUNREACH;
 udc_set_mask_UDCCR(UDCCR_RSM);
 return 0;
}
