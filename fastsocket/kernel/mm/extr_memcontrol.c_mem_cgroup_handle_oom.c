
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_list; int private; int func; scalar_t__ flags; } ;
struct oom_wait_info {TYPE_1__ wait; struct mem_cgroup* mem; } ;
struct mem_cgroup {scalar_t__ oom_kill_disable; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int TASK_KILLABLE ;
 int TIF_MEMDIE ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int finish_wait (int *,TYPE_1__*) ;
 int mem_cgroup_mark_under_oom (struct mem_cgroup*) ;
 int mem_cgroup_oom_lock (struct mem_cgroup*) ;
 int mem_cgroup_oom_notify (struct mem_cgroup*) ;
 int mem_cgroup_oom_unlock (struct mem_cgroup*) ;
 int mem_cgroup_out_of_memory (struct mem_cgroup*,int ) ;
 int mem_cgroup_unmark_under_oom (struct mem_cgroup*) ;
 int memcg_oom_lock ;
 int memcg_oom_waitq ;
 int memcg_oom_wake_function ;
 int memcg_wakeup_oom (struct mem_cgroup*) ;
 int prepare_to_wait (int *,TYPE_1__*,int ) ;
 int schedule () ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_thread_flag (int ) ;

bool mem_cgroup_handle_oom(struct mem_cgroup *mem, gfp_t mask)
{
 struct oom_wait_info owait;
 bool locked, need_to_kill;

 owait.mem = mem;
 owait.wait.flags = 0;
 owait.wait.func = memcg_oom_wake_function;
 owait.wait.private = current;
 INIT_LIST_HEAD(&owait.wait.task_list);
 need_to_kill = 1;
 mem_cgroup_mark_under_oom(mem);


 spin_lock(&memcg_oom_lock);
 locked = mem_cgroup_oom_lock(mem);





 prepare_to_wait(&memcg_oom_waitq, &owait.wait, TASK_KILLABLE);
 if (!locked || mem->oom_kill_disable)
  need_to_kill = 0;
 if (locked)
  mem_cgroup_oom_notify(mem);
 spin_unlock(&memcg_oom_lock);

 if (need_to_kill) {
  finish_wait(&memcg_oom_waitq, &owait.wait);
  mem_cgroup_out_of_memory(mem, mask);
 } else {
  schedule();
  finish_wait(&memcg_oom_waitq, &owait.wait);
 }
 spin_lock(&memcg_oom_lock);
 if (locked)
  mem_cgroup_oom_unlock(mem);
 memcg_wakeup_oom(mem);
 spin_unlock(&memcg_oom_lock);

 mem_cgroup_unmark_under_oom(mem);

 if (test_thread_flag(TIF_MEMDIE) || fatal_signal_pending(current))
  return 0;

 schedule_timeout_uninterruptible(1);
 return 1;
}
