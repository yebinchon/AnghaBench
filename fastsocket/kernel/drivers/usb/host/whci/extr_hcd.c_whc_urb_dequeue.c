
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct urb {int pipe; } ;


 int ENOTSUPP ;




 int asl_urb_dequeue (struct whc*,struct urb*,int) ;
 int pzl_urb_dequeue (struct whc*,struct urb*,int) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int usb_pipetype (int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static int whc_urb_dequeue(struct usb_hcd *usb_hcd, struct urb *urb, int status)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);
 int ret;

 switch (usb_pipetype(urb->pipe)) {
 case 129:
  ret = pzl_urb_dequeue(whc, urb, status);
  break;
 case 128:
  ret = -ENOTSUPP;
  break;
 case 130:
 case 131:
 default:
  ret = asl_urb_dequeue(whc, urb, status);
  break;
 };

 return ret;
}
