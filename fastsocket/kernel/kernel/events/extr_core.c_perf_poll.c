
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int poll; } ;
struct perf_event {int waitq; int mmap_mutex; int rb; } ;
struct file {struct perf_event* private_data; } ;
typedef int poll_table ;


 unsigned int POLL_HUP ;
 unsigned int atomic_xchg (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 struct ring_buffer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int ring_buffer_attach (struct perf_event*,struct ring_buffer*) ;

__attribute__((used)) static unsigned int perf_poll(struct file *file, poll_table *wait)
{
 struct perf_event *event = file->private_data;
 struct ring_buffer *rb;
 unsigned int events = POLL_HUP;
 mutex_lock(&event->mmap_mutex);

 rcu_read_lock();
 rb = rcu_dereference(event->rb);
 if (rb) {
  ring_buffer_attach(event, rb);
  events = atomic_xchg(&rb->poll, 0);
 }
 rcu_read_unlock();

 mutex_unlock(&event->mmap_mutex);

 poll_wait(file, &event->waitq, wait);

 return events;
}
