
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int dummy; } ;
struct whc {TYPE_1__* umc; } ;
struct usb_hcd {int dummy; } ;
struct urb {int pipe; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int ENOTSUPP ;




 int asl_urb_enqueue (struct whc*,struct urb*,int ) ;
 int dev_err (int *,char*) ;
 int pzl_urb_enqueue (struct whc*,struct urb*,int ) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int usb_pipetype (int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static int whc_urb_enqueue(struct usb_hcd *usb_hcd, struct urb *urb,
      gfp_t mem_flags)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);
 int ret;

 switch (usb_pipetype(urb->pipe)) {
 case 129:
  ret = pzl_urb_enqueue(whc, urb, mem_flags);
  break;
 case 128:
  dev_err(&whc->umc->dev, "isochronous transfers unsupported\n");
  ret = -ENOTSUPP;
  break;
 case 130:
 case 131:
 default:
  ret = asl_urb_enqueue(whc, urb, mem_flags);
  break;
 };

 return ret;
}
