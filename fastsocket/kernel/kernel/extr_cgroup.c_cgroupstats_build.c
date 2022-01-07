
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int state; } ;
struct dentry {struct cgroup* d_fsdata; TYPE_2__* d_inode; TYPE_1__* d_sb; } ;
struct cgroupstats {int nr_io_wait; int nr_stopped; int nr_uninterruptible; int nr_sleeping; int nr_running; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;
struct TYPE_4__ {int i_mode; } ;
struct TYPE_3__ {int * s_op; } ;


 int EINVAL ;
 int S_ISDIR (int ) ;




 int cgroup_iter_end (struct cgroup*,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_iter_start (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_ops ;
 int delayacct_is_task_waiting_on_io (struct task_struct*) ;

int cgroupstats_build(struct cgroupstats *stats, struct dentry *dentry)
{
 int ret = -EINVAL;
 struct cgroup *cgrp;
 struct cgroup_iter it;
 struct task_struct *tsk;





 if (dentry->d_sb->s_op != &cgroup_ops ||
     !S_ISDIR(dentry->d_inode->i_mode))
   goto err;

 ret = 0;
 cgrp = dentry->d_fsdata;

 cgroup_iter_start(cgrp, &it);
 while ((tsk = cgroup_iter_next(cgrp, &it))) {
  switch (tsk->state) {
  case 130:
   stats->nr_running++;
   break;
  case 131:
   stats->nr_sleeping++;
   break;
  case 128:
   stats->nr_uninterruptible++;
   break;
  case 129:
   stats->nr_stopped++;
   break;
  default:
   if (delayacct_is_task_waiting_on_io(tsk))
    stats->nr_io_wait++;
   break;
  }
 }
 cgroup_iter_end(cgrp, &it);

err:
 return ret;
}
