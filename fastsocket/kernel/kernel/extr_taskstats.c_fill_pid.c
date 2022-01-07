
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskstats {int nivcsw; int nvcsw; int version; } ;
struct task_struct {int nivcsw; int nvcsw; } ;
typedef int pid_t ;


 int ESRCH ;
 int TASKSTATS_VERSION ;
 int bacct_add_tsk (struct taskstats*,struct task_struct*) ;
 int delayacct_add_tsk (struct taskstats*,struct task_struct*) ;
 struct task_struct* find_task_by_vpid (int ) ;
 int get_task_struct (struct task_struct*) ;
 int memset (struct taskstats*,int ,int) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xacct_add_tsk (struct taskstats*,struct task_struct*) ;

__attribute__((used)) static int fill_pid(pid_t pid, struct task_struct *tsk,
  struct taskstats *stats)
{
 int rc = 0;

 if (!tsk) {
  rcu_read_lock();
  tsk = find_task_by_vpid(pid);
  if (tsk)
   get_task_struct(tsk);
  rcu_read_unlock();
  if (!tsk)
   return -ESRCH;
 } else
  get_task_struct(tsk);

 memset(stats, 0, sizeof(*stats));







 delayacct_add_tsk(stats, tsk);


 stats->version = TASKSTATS_VERSION;
 stats->nvcsw = tsk->nvcsw;
 stats->nivcsw = tsk->nivcsw;
 bacct_add_tsk(stats, tsk);


 xacct_add_tsk(stats, tsk);


 put_task_struct(tsk);
 return rc;

}
