
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kthread_create_info {int (* threadfn ) (void*) ;int done; TYPE_1__* result; void* data; } ;
struct kthread {scalar_t__ should_stop; int exited; } ;
struct TYPE_2__ {int * vfork_done; } ;


 int EINTR ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int complete (int *) ;
 TYPE_1__* current ;
 int do_exit (int) ;
 int init_completion (int *) ;
 int schedule () ;

__attribute__((used)) static int kthread(void *_create)
{

 struct kthread_create_info *create = _create;
 int (*threadfn)(void *data) = create->threadfn;
 void *data = create->data;
 struct kthread self;
 int ret;

 self.should_stop = 0;
 init_completion(&self.exited);
 current->vfork_done = &self.exited;


 __set_current_state(TASK_UNINTERRUPTIBLE);
 create->result = current;
 complete(&create->done);
 schedule();

 ret = -EINTR;
 if (!self.should_stop)
  ret = threadfn(data);


 do_exit(ret);
}
