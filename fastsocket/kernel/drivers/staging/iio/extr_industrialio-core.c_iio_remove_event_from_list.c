
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct iio_interrupt {int ev_list_lock; } ;
struct iio_event_handler_list {scalar_t__ refcount; int exist_lock; int list; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iio_interrupt* to_iio_interrupt (struct list_head*) ;

void iio_remove_event_from_list(struct iio_event_handler_list *el,
          struct list_head *head)
{
 unsigned long flags;
 struct iio_interrupt *inter = to_iio_interrupt(head);

 mutex_lock(&el->exist_lock);
 el->refcount--;
 if (el->refcount == 0) {

  spin_lock_irqsave(&inter->ev_list_lock, flags);
  list_del_init(&el->list);
  spin_unlock_irqrestore(&inter->ev_list_lock, flags);
 }
 mutex_unlock(&el->exist_lock);
}
