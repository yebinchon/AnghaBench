
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc_qset {int remove; int in_sw_list; } ;
struct TYPE_2__ {int usb_hcd; } ;
struct whc {int periodic_work; int workqueue; int lock; TYPE_1__ wusbhc; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct whc_qset* get_qset (struct whc*,struct urb*,int ) ;
 int qset_add_urb (struct whc*,struct whc_qset*,struct urb*,int ) ;
 int qset_insert_in_sw_list (struct whc*,struct whc_qset*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_link_urb_to_ep (int *,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (int *,struct urb*) ;

int pzl_urb_enqueue(struct whc *whc, struct urb *urb, gfp_t mem_flags)
{
 struct whc_qset *qset;
 int err;
 unsigned long flags;

 spin_lock_irqsave(&whc->lock, flags);

 err = usb_hcd_link_urb_to_ep(&whc->wusbhc.usb_hcd, urb);
 if (err < 0) {
  spin_unlock_irqrestore(&whc->lock, flags);
  return err;
 }

 qset = get_qset(whc, urb, GFP_ATOMIC);
 if (qset == ((void*)0))
  err = -ENOMEM;
 else
  err = qset_add_urb(whc, qset, urb, GFP_ATOMIC);
 if (!err) {
  if (!qset->in_sw_list && !qset->remove)
   qset_insert_in_sw_list(whc, qset);
 } else
  usb_hcd_unlink_urb_from_ep(&whc->wusbhc.usb_hcd, urb);

 spin_unlock_irqrestore(&whc->lock, flags);

 if (!err)
  queue_work(whc->workqueue, &whc->periodic_work);

 return err;
}
