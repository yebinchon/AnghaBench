
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskstats {int dummy; } ;
struct task_struct {TYPE_1__* sighand; struct signal_struct* signal; } ;
struct signal_struct {struct taskstats* stats; } ;
struct TYPE_2__ {int siglock; } ;


 int GFP_KERNEL ;
 int kmem_cache_free (int ,struct taskstats*) ;
 struct taskstats* kmem_cache_zalloc (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int taskstats_cache ;
 scalar_t__ thread_group_empty (struct task_struct*) ;

__attribute__((used)) static struct taskstats *taskstats_tgid_alloc(struct task_struct *tsk)
{
 struct signal_struct *sig = tsk->signal;
 struct taskstats *stats;

 if (sig->stats || thread_group_empty(tsk))
  goto ret;


 stats = kmem_cache_zalloc(taskstats_cache, GFP_KERNEL);

 spin_lock_irq(&tsk->sighand->siglock);
 if (!sig->stats) {
  sig->stats = stats;
  stats = ((void*)0);
 }
 spin_unlock_irq(&tsk->sighand->siglock);

 if (stats)
  kmem_cache_free(taskstats_cache, stats);
ret:
 return sig->stats;
}
