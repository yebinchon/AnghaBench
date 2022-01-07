
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int urb_list; } ;
struct usb_hcd {int dummy; } ;
struct c67x00_hcd {int lock; int endpoint_disable; } ;


 int HZ ;
 int INIT_COMPLETION (int ) ;
 scalar_t__ c67x00_ep_data_free (struct usb_host_endpoint*) ;
 int c67x00_hcd_dev (struct c67x00_hcd*) ;
 int c67x00_sched_kick (struct c67x00_hcd*) ;
 int dev_warn (int ,char*) ;
 struct c67x00_hcd* hcd_to_c67x00_hcd (struct usb_hcd*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int) ;

void c67x00_endpoint_disable(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct c67x00_hcd *c67x00 = hcd_to_c67x00_hcd(hcd);
 unsigned long flags;

 if (!list_empty(&ep->urb_list))
  dev_warn(c67x00_hcd_dev(c67x00), "error: urb list not empty\n");

 spin_lock_irqsave(&c67x00->lock, flags);


 while (c67x00_ep_data_free(ep)) {

  spin_unlock_irqrestore(&c67x00->lock, flags);




  INIT_COMPLETION(c67x00->endpoint_disable);
  c67x00_sched_kick(c67x00);
  wait_for_completion_timeout(&c67x00->endpoint_disable, 1 * HZ);

  spin_lock_irqsave(&c67x00->lock, flags);
 }

 spin_unlock_irqrestore(&c67x00->lock, flags);
}
