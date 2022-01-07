
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_opts {int notask_error; } ;
struct task_struct {scalar_t__ exit_state; } ;


 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int delay_group_leader (struct task_struct*) ;
 int eligible_child (struct wait_opts*,struct task_struct*) ;
 scalar_t__ likely (int) ;
 int security_task_wait (struct task_struct*) ;
 int task_ptrace (struct task_struct*) ;
 scalar_t__ task_stopped_code (struct task_struct*,int) ;
 scalar_t__ unlikely (int) ;
 int wait_task_continued (struct wait_opts*,struct task_struct*) ;
 int wait_task_stopped (struct wait_opts*,int,struct task_struct*) ;
 int wait_task_zombie (struct wait_opts*,struct task_struct*) ;

__attribute__((used)) static int wait_consider_task(struct wait_opts *wo, int ptrace,
    struct task_struct *p)
{
 int ret = eligible_child(wo, p);
 if (!ret)
  return ret;

 ret = security_task_wait(p);
 if (unlikely(ret < 0)) {







  if (wo->notask_error)
   wo->notask_error = ret;
  return 0;
 }

 if (likely(!ptrace) && unlikely(task_ptrace(p))) {




  wo->notask_error = 0;
  return 0;
 }

 if (p->exit_state == EXIT_DEAD)
  return 0;




 if (p->exit_state == EXIT_ZOMBIE && !delay_group_leader(p))
  return wait_task_zombie(wo, p);





 wo->notask_error = 0;

 if (task_stopped_code(p, ptrace))
  return wait_task_stopped(wo, ptrace, p);

 return wait_task_continued(wo, p);
}
