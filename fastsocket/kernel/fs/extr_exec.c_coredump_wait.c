
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct completion* vfork_done; struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; } ;
struct core_thread {struct core_thread* next; int task; } ;
struct TYPE_2__ {struct core_thread* next; struct task_struct* task; } ;
struct core_state {TYPE_1__ dumper; int startup; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;
 struct task_struct* current ;
 int init_completion (int *) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;
 int wait_for_completion (int *) ;
 int wait_task_inactive (int ,int ) ;
 int zap_threads (struct task_struct*,struct mm_struct*,struct core_state*,int) ;

__attribute__((used)) static int coredump_wait(int exit_code, struct core_state *core_state)
{
 struct task_struct *tsk = current;
 struct mm_struct *mm = tsk->mm;
 struct completion *vfork_done;
 int core_waiters;

 init_completion(&core_state->startup);
 core_state->dumper.task = tsk;
 core_state->dumper.next = ((void*)0);
 core_waiters = zap_threads(tsk, mm, core_state, exit_code);
 up_write(&mm->mmap_sem);

 if (unlikely(core_waiters < 0))
  goto fail;





 vfork_done = tsk->vfork_done;
 if (vfork_done) {
  tsk->vfork_done = ((void*)0);
  complete(vfork_done);
 }

 if (core_waiters) {
  struct core_thread *ptr;

  wait_for_completion(&core_state->startup);





  ptr = core_state->dumper.next;
  while (ptr != ((void*)0)) {
   wait_task_inactive(ptr->task, 0);
   ptr = ptr->next;
  }
 }
fail:
 return core_waiters;
}
