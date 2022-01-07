
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int dummy; } ;
struct perf_event {int cpu; scalar_t__ ctx; int mmap_mutex; struct ring_buffer* rb; int mmap_count; } ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct ring_buffer*,struct ring_buffer*) ;
 int ring_buffer_detach (struct perf_event*,struct ring_buffer*) ;
 struct ring_buffer* ring_buffer_get (struct perf_event*) ;
 int ring_buffer_put (struct ring_buffer*) ;

__attribute__((used)) static int
perf_event_set_output(struct perf_event *event, struct perf_event *output_event)
{
 struct ring_buffer *rb = ((void*)0), *old_rb = ((void*)0);
 int ret = -EINVAL;

 if (!output_event)
  goto set;


 if (event == output_event)
  goto out;




 if (output_event->cpu != event->cpu)
  goto out;




 if (output_event->cpu == -1 && output_event->ctx != event->ctx)
  goto out;

set:
 mutex_lock(&event->mmap_mutex);

 if (atomic_read(&event->mmap_count))
  goto unlock;

 if (output_event) {

  rb = ring_buffer_get(output_event);
  if (!rb)
   goto unlock;
 }

 old_rb = event->rb;
 rcu_assign_pointer(event->rb, rb);
 if (old_rb)
  ring_buffer_detach(event, old_rb);
 ret = 0;
unlock:
 mutex_unlock(&event->mmap_mutex);

 if (old_rb)
  ring_buffer_put(old_rb);
out:
 return ret;
}
