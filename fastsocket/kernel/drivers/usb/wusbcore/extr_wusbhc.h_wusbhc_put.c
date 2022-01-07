
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int usb_hcd; } ;


 int usb_put_hcd (int *) ;

__attribute__((used)) static inline void wusbhc_put(struct wusbhc *wusbhc)
{
 usb_put_hcd(&wusbhc->usb_hcd);
}
