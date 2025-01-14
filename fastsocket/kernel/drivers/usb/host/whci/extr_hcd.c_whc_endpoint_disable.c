
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct whc_qset {int dummy; } ;
struct whc {int dummy; } ;
struct usb_host_endpoint {int desc; struct whc_qset* hcpriv; } ;
struct usb_hcd {int dummy; } ;


 int asl_qset_delete (struct whc*,struct whc_qset*) ;
 int pzl_qset_delete (struct whc*,struct whc_qset*) ;
 scalar_t__ usb_endpoint_xfer_bulk (int *) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static void whc_endpoint_disable(struct usb_hcd *usb_hcd,
     struct usb_host_endpoint *ep)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);
 struct whc_qset *qset;

 qset = ep->hcpriv;
 if (qset) {
  ep->hcpriv = ((void*)0);
  if (usb_endpoint_xfer_bulk(&ep->desc)
      || usb_endpoint_xfer_control(&ep->desc))
   asl_qset_delete(whc, qset);
  else
   pzl_qset_delete(whc, qset);
 }
}
