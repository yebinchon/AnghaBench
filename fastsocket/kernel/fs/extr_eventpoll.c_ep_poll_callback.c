
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
struct eventpoll {scalar_t__ ovflist; int poll_wait; int lock; int wq; int rdllist; } ;
struct TYPE_2__ {int events; } ;
struct epitem {scalar_t__ next; int rdllink; TYPE_1__ event; struct eventpoll* ep; } ;


 int EP_PRIVATE_BITS ;
 scalar_t__ EP_UNACTIVE_PTR ;
 int ep_is_linked (int *) ;
 struct epitem* ep_item_from_wait (int *) ;
 int ep_poll_safewake (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_locked (int *) ;

__attribute__((used)) static int ep_poll_callback(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
 int pwake = 0;
 unsigned long flags;
 struct epitem *epi = ep_item_from_wait(wait);
 struct eventpoll *ep = epi->ep;

 spin_lock_irqsave(&ep->lock, flags);







 if (!(epi->event.events & ~EP_PRIVATE_BITS))
  goto out_unlock;







 if (key && !((unsigned long) key & epi->event.events))
  goto out_unlock;







 if (unlikely(ep->ovflist != EP_UNACTIVE_PTR)) {
  if (epi->next == EP_UNACTIVE_PTR) {
   epi->next = ep->ovflist;
   ep->ovflist = epi;
  }
  goto out_unlock;
 }


 if (!ep_is_linked(&epi->rdllink))
  list_add_tail(&epi->rdllink, &ep->rdllist);





 if (waitqueue_active(&ep->wq))
  wake_up_locked(&ep->wq);
 if (waitqueue_active(&ep->poll_wait))
  pwake++;

out_unlock:
 spin_unlock_irqrestore(&ep->lock, flags);


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 return 1;
}
