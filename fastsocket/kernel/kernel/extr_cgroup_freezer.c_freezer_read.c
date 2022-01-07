
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct freezer {int state; int lock; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
typedef enum freezer_state { ____Placeholder_freezer_state } freezer_state ;


 int CGROUP_FREEZING ;
 int ENODEV ;
 struct freezer* cgroup_freezer (struct cgroup*) ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_unlock () ;
 int * freezer_state_strs ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_if_frozen (struct cgroup*,struct freezer*) ;

__attribute__((used)) static int freezer_read(struct cgroup *cgroup, struct cftype *cft,
   struct seq_file *m)
{
 struct freezer *freezer;
 enum freezer_state state;

 if (!cgroup_lock_live_group(cgroup))
  return -ENODEV;

 freezer = cgroup_freezer(cgroup);
 spin_lock_irq(&freezer->lock);
 state = freezer->state;
 if (state == CGROUP_FREEZING) {


  update_if_frozen(cgroup, freezer);
  state = freezer->state;
 }
 spin_unlock_irq(&freezer->lock);
 cgroup_unlock();

 seq_puts(m, freezer_state_strs[state]);
 seq_putc(m, '\n');
 return 0;
}
