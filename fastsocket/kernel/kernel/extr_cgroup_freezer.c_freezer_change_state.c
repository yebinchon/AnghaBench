
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freezer {int state; int lock; } ;
struct cgroup {int dummy; } ;
typedef enum freezer_state { ____Placeholder_freezer_state } freezer_state ;


 int BUG () ;


 struct freezer* cgroup_freezer (struct cgroup*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int try_to_freeze_cgroup (struct cgroup*,struct freezer*) ;
 int unfreeze_cgroup (struct cgroup*,struct freezer*) ;
 int update_if_frozen (struct cgroup*,struct freezer*) ;

__attribute__((used)) static int freezer_change_state(struct cgroup *cgroup,
    enum freezer_state goal_state)
{
 struct freezer *freezer;
 int retval = 0;

 freezer = cgroup_freezer(cgroup);

 spin_lock_irq(&freezer->lock);

 update_if_frozen(cgroup, freezer);
 if (goal_state == freezer->state)
  goto out;

 switch (goal_state) {
 case 128:
  unfreeze_cgroup(cgroup, freezer);
  break;
 case 129:
  retval = try_to_freeze_cgroup(cgroup, freezer);
  break;
 default:
  BUG();
 }
out:
 spin_unlock_irq(&freezer->lock);

 return retval;
}
