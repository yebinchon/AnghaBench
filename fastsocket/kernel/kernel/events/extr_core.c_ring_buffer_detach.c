
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int event_lock; } ;
struct perf_event {int waitq; int rb_entry; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ring_buffer_detach(struct perf_event *event,
          struct ring_buffer *rb)
{
 unsigned long flags;

 if (list_empty(&event->rb_entry))
  return;

 spin_lock_irqsave(&rb->event_lock, flags);
 list_del_init(&event->rb_entry);
 wake_up_all(&event->waitq);
 spin_unlock_irqrestore(&rb->event_lock, flags);
}
