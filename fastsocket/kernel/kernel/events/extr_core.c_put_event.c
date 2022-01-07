
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int perf_event_mutex; } ;
struct perf_event {int owner_entry; int owner; int refcount; } ;


 struct task_struct* ACCESS_ONCE (int ) ;
 int atomic_long_dec_and_test (int *) ;
 int get_task_struct (struct task_struct*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_event_release_kernel (struct perf_event*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_read_barrier_depends () ;

__attribute__((used)) static void put_event(struct perf_event *event)
{
 struct task_struct *owner;

 if (!atomic_long_dec_and_test(&event->refcount))
  return;

 rcu_read_lock();
 owner = ACCESS_ONCE(event->owner);






 smp_read_barrier_depends();
 if (owner) {





  get_task_struct(owner);
 }
 rcu_read_unlock();

 if (owner) {
  mutex_lock(&owner->perf_event_mutex);






  if (event->owner)
   list_del_init(&event->owner_entry);
  mutex_unlock(&owner->perf_event_mutex);
  put_task_struct(owner);
 }

 perf_event_release_kernel(event);
}
