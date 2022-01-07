
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cgroup_subsys {int disabled; TYPE_1__* root; int name; } ;
struct TYPE_2__ {int number_of_cgroups; int hierarchy_id; } ;


 int CGROUP_SUBSYS_COUNT ;
 int cgroup_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int) ;
 int seq_puts (struct seq_file*,char*) ;
 struct cgroup_subsys** subsys ;

__attribute__((used)) static int proc_cgroupstats_show(struct seq_file *m, void *v)
{
 int i;

 seq_puts(m, "#subsys_name\thierarchy\tnum_cgroups\tenabled\n");
 mutex_lock(&cgroup_mutex);
 for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
  struct cgroup_subsys *ss = subsys[i];
  seq_printf(m, "%s\t%d\t%d\t%d\n",
      ss->name, ss->root->hierarchy_id,
      ss->root->number_of_cgroups, !ss->disabled);
 }
 mutex_unlock(&cgroup_mutex);
 return 0;
}
