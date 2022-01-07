
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; TYPE_2__* vm_file; } ;
struct user_struct {int locked_vm; } ;
struct ring_buffer {int dummy; } ;
struct perf_event {int mmap_mutex; struct ring_buffer* rb; scalar_t__ mmap_locked; struct user_struct* mmap_user; int mmap_count; } ;
struct TYPE_4__ {struct perf_event* private_data; } ;
struct TYPE_3__ {int locked_vm; } ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 int atomic_long_sub (unsigned long,int *) ;
 int free_uid (struct user_struct*) ;
 int mutex_unlock (int *) ;
 unsigned long perf_data_size (struct ring_buffer*) ;
 int rcu_assign_pointer (struct ring_buffer*,int *) ;
 int ring_buffer_detach (struct perf_event*,struct ring_buffer*) ;
 int ring_buffer_put (struct ring_buffer*) ;

__attribute__((used)) static void perf_mmap_close(struct vm_area_struct *vma)
{
 struct perf_event *event = vma->vm_file->private_data;

 if (atomic_dec_and_mutex_lock(&event->mmap_count, &event->mmap_mutex)) {
  unsigned long size = perf_data_size(event->rb);
  struct user_struct *user = event->mmap_user;
  struct ring_buffer *rb = event->rb;

  atomic_long_sub((size >> PAGE_SHIFT) + 1, &user->locked_vm);
  vma->vm_mm->locked_vm -= event->mmap_locked;
  rcu_assign_pointer(event->rb, ((void*)0));
  ring_buffer_detach(event, rb);
  mutex_unlock(&event->mmap_mutex);

  ring_buffer_put(rb);
  free_uid(user);
 }
}
