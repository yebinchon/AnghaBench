
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct eventpoll {int poll_wait; int lock; int wq; int rdllist; } ;
struct epoll_event {unsigned int events; int data; } ;
struct TYPE_7__ {TYPE_4__* file; } ;
struct TYPE_5__ {unsigned int events; int data; } ;
struct epitem {int rdllink; TYPE_3__ ffd; TYPE_1__ event; } ;
struct TYPE_8__ {TYPE_2__* f_op; } ;
struct TYPE_6__ {unsigned int (* poll ) (TYPE_4__*,int *) ;} ;


 int ep_is_linked (int *) ;
 int ep_poll_safewake (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned int stub1 (TYPE_4__*,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_locked (int *) ;

int ep_modify(struct eventpoll *ep, struct epitem *epi, struct epoll_event *event)
{
 int pwake = 0;
 unsigned int revents;






 epi->event.events = event->events;
 epi->event.data = event->data;





 revents = epi->ffd.file->f_op->poll(epi->ffd.file, ((void*)0));





 if (revents & event->events) {
  spin_lock_irq(&ep->lock);
  if (!ep_is_linked(&epi->rdllink)) {
   list_add_tail(&epi->rdllink, &ep->rdllist);


   if (waitqueue_active(&ep->wq))
    wake_up_locked(&ep->wq);
   if (waitqueue_active(&ep->poll_wait))
    pwake++;
  }
  spin_unlock_irq(&ep->lock);
 }


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 return 0;
}
