
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct cgroupfs_root* s_fs_info; } ;
struct cgroup {TYPE_2__* dentry; } ;
struct cgroupfs_root {scalar_t__ flags; int release_agent_path; int name; struct cgroup top_cgroup; } ;
struct cgroup_sb_opts {scalar_t__ flags; scalar_t__ name; scalar_t__ release_agent; int subsys_bits; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mutex; } ;


 int EINVAL ;
 int cgroup_mutex ;
 int cgroup_populate_dir (struct cgroup*) ;
 int cgroup_root_mutex ;
 int kfree (scalar_t__) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_cgroupfs_options (char*,struct cgroup_sb_opts*) ;
 int rebind_subsystems (struct cgroupfs_root*,int ) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 int strcpy (int ,scalar_t__) ;
 int unlock_kernel () ;

__attribute__((used)) static int cgroup_remount(struct super_block *sb, int *flags, char *data)
{
 int ret = 0;
 struct cgroupfs_root *root = sb->s_fs_info;
 struct cgroup *cgrp = &root->top_cgroup;
 struct cgroup_sb_opts opts;

 lock_kernel();
 mutex_lock(&cgrp->dentry->d_inode->i_mutex);
 mutex_lock(&cgroup_mutex);
 mutex_lock(&cgroup_root_mutex);


 ret = parse_cgroupfs_options(data, &opts);
 if (ret)
  goto out_unlock;


 if (opts.flags != root->flags) {
  ret = -EINVAL;
  goto out_unlock;
 }


 if (opts.name && strcmp(opts.name, root->name)) {
  ret = -EINVAL;
  goto out_unlock;
 }

 ret = rebind_subsystems(root, opts.subsys_bits);
 if (ret)
  goto out_unlock;


 cgroup_populate_dir(cgrp);

 if (opts.release_agent)
  strcpy(root->release_agent_path, opts.release_agent);
 out_unlock:
 kfree(opts.release_agent);
 kfree(opts.name);
 mutex_unlock(&cgroup_root_mutex);
 mutex_unlock(&cgroup_mutex);
 mutex_unlock(&cgrp->dentry->d_inode->i_mutex);
 unlock_kernel();
 return ret;
}
