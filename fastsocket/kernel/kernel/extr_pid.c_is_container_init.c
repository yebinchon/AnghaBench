
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid {size_t level; TYPE_1__* numbers; } ;
struct TYPE_2__ {int nr; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct pid* task_pid (struct task_struct*) ;

int is_container_init(struct task_struct *tsk)
{
 int ret = 0;
 struct pid *pid;

 rcu_read_lock();
 pid = task_pid(tsk);
 if (pid != ((void*)0) && pid->numbers[pid->level].nr == 1)
  ret = 1;
 rcu_read_unlock();

 return ret;
}
