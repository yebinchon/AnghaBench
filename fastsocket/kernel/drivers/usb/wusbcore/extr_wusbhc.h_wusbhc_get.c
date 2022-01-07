
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int usb_hcd; } ;


 scalar_t__ usb_get_hcd (int *) ;

__attribute__((used)) static inline struct wusbhc *wusbhc_get(struct wusbhc *wusbhc)
{
 return usb_get_hcd(&wusbhc->usb_hcd) ? wusbhc : ((void*)0);
}
