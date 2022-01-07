
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_mode; int f_lock; int * f_epi; } ;
struct eventpoll {TYPE_2__* user; int lock; int rbr; } ;
struct TYPE_3__ {struct file* file; } ;
struct epitem {int rcu; int rdllink; int rbn; int fllink; TYPE_1__ ffd; } ;
struct TYPE_4__ {int epoll_watches; } ;


 int FMODE_BIND_EPI ;
 int atomic_dec (int *) ;
 int call_rcu (int *,int ) ;
 scalar_t__ ep_is_linked (int *) ;
 int ep_unregister_pollwait (struct eventpoll*,struct epitem*) ;
 int epi_rcu_free ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ep_remove(struct eventpoll *ep, struct epitem *epi)
{
 unsigned long flags;
 struct file *file = epi->ffd.file;

 if (file->f_mode & FMODE_BIND_EPI) {
  file->f_epi = ((void*)0);
 }
 ep_unregister_pollwait(ep, epi);


 spin_lock(&file->f_lock);
 list_del_rcu(&epi->fllink);
 spin_unlock(&file->f_lock);

 rb_erase(&epi->rbn, &ep->rbr);

 spin_lock_irqsave(&ep->lock, flags);
 if (ep_is_linked(&epi->rdllink))
  list_del_init(&epi->rdllink);
 spin_unlock_irqrestore(&ep->lock, flags);
 call_rcu(&epi->rcu, epi_rcu_free);

 atomic_dec(&ep->user->epoll_watches);

 return 0;
}
