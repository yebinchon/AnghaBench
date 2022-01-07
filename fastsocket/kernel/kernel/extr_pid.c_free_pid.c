
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct upid {TYPE_1__* ns; int pid_chain; } ;
struct pid {int level; int rcu; struct upid* numbers; } ;
struct TYPE_2__ {scalar_t__ nr_hashed; int proc_work; } ;


 int call_rcu (int *,int ) ;
 int delayed_put_pid ;
 int free_pidmap (struct upid*) ;
 int hlist_del_rcu (int *) ;
 int pidmap_lock ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void free_pid(struct pid *pid)
{

 int i;
 unsigned long flags;

 spin_lock_irqsave(&pidmap_lock, flags);
 for (i = 0; i <= pid->level; i++) {
  struct upid *upid = pid->numbers + i;
  hlist_del_rcu(&upid->pid_chain);
  if (--upid->ns->nr_hashed == 0)
   schedule_work(&upid->ns->proc_work);
 }
 spin_unlock_irqrestore(&pidmap_lock, flags);

 for (i = 0; i <= pid->level; i++)
  free_pidmap(pid->numbers + i);

 call_rcu(&pid->rcu, delayed_put_pid);
}
