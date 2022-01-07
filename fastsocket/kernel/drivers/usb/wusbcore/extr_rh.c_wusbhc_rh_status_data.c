
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int ports_max; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {scalar_t__ change; } ;


 int clear_bit (size_t,unsigned long*) ;
 int set_bit (size_t,unsigned long*) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,size_t) ;

int wusbhc_rh_status_data(struct usb_hcd *usb_hcd, char *_buf)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 size_t cnt, size;
 unsigned long *buf = (unsigned long *) _buf;


 size = wusbhc->ports_max + 1 ;
 size = (size + 8 - 1) / 8;
 for (cnt = 0; cnt < wusbhc->ports_max; cnt++)
  if (wusb_port_by_idx(wusbhc, cnt)->change)
   set_bit(cnt + 1, buf);
  else
   clear_bit(cnt + 1, buf);
 return size;
}
