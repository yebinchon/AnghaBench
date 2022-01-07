
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct cgroup_pidlist* private; } ;
struct file {int f_mode; scalar_t__ private_data; int * f_op; TYPE_1__* f_dentry; } ;
struct cgroup_pidlist {int dummy; } ;
struct cgroup {int dummy; } ;
typedef enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;
struct TYPE_2__ {int d_parent; } ;


 int FMODE_READ ;
 struct cgroup* __d_cgrp (int ) ;
 int cgroup_pidlist_operations ;
 int cgroup_pidlist_seq_operations ;
 int cgroup_release_pid_array (struct cgroup_pidlist*) ;
 int pidlist_array_load (struct cgroup*,int,struct cgroup_pidlist**) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int cgroup_pidlist_open(struct file *file, enum cgroup_filetype type)
{
 struct cgroup *cgrp = __d_cgrp(file->f_dentry->d_parent);
 struct cgroup_pidlist *l;
 int retval;


 if (!(file->f_mode & FMODE_READ))
  return 0;


 retval = pidlist_array_load(cgrp, type, &l);
 if (retval)
  return retval;

 file->f_op = &cgroup_pidlist_operations;

 retval = seq_open(file, &cgroup_pidlist_seq_operations);
 if (retval) {
  cgroup_release_pid_array(l);
  return retval;
 }
 ((struct seq_file *)file->private_data)->private = l;
 return 0;
}
