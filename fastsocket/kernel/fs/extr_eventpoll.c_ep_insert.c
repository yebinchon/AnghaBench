
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_mode; int f_lock; int f_ep_links; TYPE_1__* f_op; struct epitem* f_epi; } ;
struct eventpoll {int lock; int rbr; int poll_wait; TYPE_2__* user; int wq; int rdllist; } ;
struct epoll_event {int events; } ;
struct epitem {scalar_t__ nwait; int rdllink; int rbn; int fllink; int next; struct epoll_event event; int ffd; struct eventpoll* ep; int pwqlist; } ;
struct ep_pqueue {int pt; struct epitem* epi; } ;
struct TYPE_4__ {int epoll_watches; } ;
struct TYPE_3__ {int (* poll ) (struct file*,int *) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EP_UNACTIVE_PTR ;
 int FMODE_BIND_EPI ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ ep_is_linked (int *) ;
 int ep_poll_safewake (int *) ;
 int ep_ptable_queue_proc ;
 int ep_rbtree_insert (struct eventpoll*,struct epitem*) ;
 int ep_set_ffd (int *,struct file*,int) ;
 int ep_unregister_pollwait (struct eventpoll*,struct epitem*) ;
 int epi_cache ;
 int init_poll_funcptr (int *,int ) ;
 struct epitem* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct epitem*) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ max_user_watches ;
 int rb_erase (int *,int *) ;
 scalar_t__ reverse_path_check () ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct file*,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_locked (int *) ;

int ep_insert(struct eventpoll *ep, struct epoll_event *event,
       struct file *tfile, int fd, int full_check)
{
 int error, revents, pwake = 0;
 unsigned long flags;
 struct epitem *epi;
 struct ep_pqueue epq;

 if (unlikely(atomic_read(&ep->user->epoll_watches) >=
       max_user_watches))
  return -ENOSPC;
 if (!(epi = kmem_cache_alloc(epi_cache, GFP_KERNEL)))
  return -ENOMEM;


 INIT_LIST_HEAD(&epi->rdllink);
 INIT_LIST_HEAD(&epi->fllink);
 INIT_LIST_HEAD(&epi->pwqlist);
 epi->ep = ep;
 ep_set_ffd(&epi->ffd, tfile, fd);
 epi->event = *event;
 epi->nwait = 0;
 epi->next = EP_UNACTIVE_PTR;

 if (tfile->f_mode & FMODE_BIND_EPI) {
  tfile->f_epi = epi;
 }


 epq.epi = epi;
 init_poll_funcptr(&epq.pt, ep_ptable_queue_proc);
 revents = tfile->f_op->poll(tfile, &epq.pt);






 error = -ENOMEM;
 if (epi->nwait < 0)
  goto error_unregister;


 spin_lock(&tfile->f_lock);
 list_add_tail_rcu(&epi->fllink, &tfile->f_ep_links);
 spin_unlock(&tfile->f_lock);





 ep_rbtree_insert(ep, epi);


 error = -EINVAL;
 if (full_check && reverse_path_check())
  goto error_remove_epi;


 spin_lock_irqsave(&ep->lock, flags);


 if ((revents & event->events) && !ep_is_linked(&epi->rdllink)) {
  list_add_tail(&epi->rdllink, &ep->rdllist);


  if (waitqueue_active(&ep->wq))
   wake_up_locked(&ep->wq);
  if (waitqueue_active(&ep->poll_wait))
   pwake++;
 }

 spin_unlock_irqrestore(&ep->lock, flags);

 atomic_inc(&ep->user->epoll_watches);


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 return 0;

error_remove_epi:
 spin_lock(&tfile->f_lock);
 list_del_rcu(&epi->fllink);
 spin_unlock(&tfile->f_lock);

 rb_erase(&epi->rbn, &ep->rbr);

error_unregister:
 ep_unregister_pollwait(ep, epi);







 spin_lock_irqsave(&ep->lock, flags);
 if (ep_is_linked(&epi->rdllink))
  list_del_init(&epi->rdllink);
 spin_unlock_irqrestore(&ep->lock, flags);

 kmem_cache_free(epi_cache, epi);

 return error;
}
