
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_request {int status; struct f_acm* context; } ;
struct usb_ep {int dummy; } ;
struct f_acm {int pending; int lock; struct usb_request* notify_req; } ;


 int ESHUTDOWN ;
 int acm_notify_serial_state (struct f_acm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void acm_cdc_notify_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_acm *acm = req->context;
 u8 doit = 0;




 spin_lock(&acm->lock);
 if (req->status != -ESHUTDOWN)
  doit = acm->pending;
 acm->notify_req = req;
 spin_unlock(&acm->lock);

 if (doit)
  acm_notify_serial_state(acm);
}
