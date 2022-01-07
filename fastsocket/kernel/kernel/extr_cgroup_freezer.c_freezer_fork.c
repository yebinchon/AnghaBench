
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cgroup; } ;
struct freezer {scalar_t__ state; int lock; TYPE_2__ css; } ;
struct cgroup_subsys {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 int BUG_ON (int) ;
 scalar_t__ CGROUP_FREEZING ;
 scalar_t__ CGROUP_FROZEN ;
 int freeze_task (struct task_struct*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct freezer* task_freezer (struct task_struct*) ;

__attribute__((used)) static void freezer_fork(struct cgroup_subsys *ss, struct task_struct *task)
{
 struct freezer *freezer;







 freezer = task_freezer(task);





 if (!freezer->css.cgroup->parent)
  return;

 spin_lock_irq(&freezer->lock);
 BUG_ON(freezer->state == CGROUP_FROZEN);


 if (freezer->state == CGROUP_FREEZING)
  freeze_task(task, 1);
 spin_unlock_irq(&freezer->lock);
}
