
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int refcount; } ;
struct perf_event {int rb; } ;


 int atomic_inc_not_zero (int *) ;
 struct ring_buffer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct ring_buffer *ring_buffer_get(struct perf_event *event)
{
 struct ring_buffer *rb;

 rcu_read_lock();
 rb = rcu_dereference(event->rb);
 if (rb) {
  if (!atomic_inc_not_zero(&rb->refcount))
   rb = ((void*)0);
 }
 rcu_read_unlock();

 return rb;
}
