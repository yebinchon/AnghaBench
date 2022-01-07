
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int event_lock; int event_list; } ;
struct perf_event {int rb_entry; } ;


 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ring_buffer_attach(struct perf_event *event,
          struct ring_buffer *rb)
{
 unsigned long flags;

 if (!list_empty(&event->rb_entry))
  return;

 spin_lock_irqsave(&rb->event_lock, flags);
 if (!list_empty(&event->rb_entry))
  goto unlock;

 list_add(&event->rb_entry, &rb->event_list);
unlock:
 spin_unlock_irqrestore(&rb->event_lock, flags);
}
