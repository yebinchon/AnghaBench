
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct musb {int port1_status; } ;


 struct musb* hcd_to_musb (struct usb_hcd*) ;

int musb_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct musb *musb = hcd_to_musb(hcd);
 int retval = 0;


 if (musb->port1_status & 0xffff0000) {
  *buf = 0x02;
  retval = 1;
 }
 return retval;
}
