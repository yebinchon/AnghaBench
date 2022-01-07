
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_lock; struct cgroup* d_fsdata; } ;
struct cgroup {int flags; TYPE_1__* dentry; int root; int sibling; int release_list; int children; int count; struct cgroup* parent; } ;
struct TYPE_2__ {int d_lock; } ;


 int CGRP_RELEASABLE ;
 int CGRP_REMOVED ;
 int CGRP_WAIT_ON_RMDIR ;
 int DEFINE_WAIT (int ) ;
 int EBUSY ;
 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int cgroup_call_pre_destroy (struct cgroup*) ;
 int cgroup_clear_css_refs (struct cgroup*) ;
 int cgroup_d_remove_dir (struct dentry*) ;
 int cgroup_lock_hierarchy (int ) ;
 int cgroup_mutex ;
 int cgroup_rmdir_waitq ;
 int cgroup_unlock_hierarchy (int ) ;
 int check_for_release (struct cgroup*) ;
 int clear_bit (int ,int *) ;
 int current ;
 struct dentry* dget (TYPE_1__*) ;
 int dput (struct dentry*) ;
 int finish_wait (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int release_list_lock ;
 int schedule () ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static int cgroup_rmdir(struct inode *unused_dir, struct dentry *dentry)
{
 struct cgroup *cgrp = dentry->d_fsdata;
 struct dentry *d;
 struct cgroup *parent;
 DEFINE_WAIT(wait);
 int ret;


again:
 mutex_lock(&cgroup_mutex);
 if (atomic_read(&cgrp->count) != 0) {
  mutex_unlock(&cgroup_mutex);
  return -EBUSY;
 }
 if (!list_empty(&cgrp->children)) {
  mutex_unlock(&cgroup_mutex);
  return -EBUSY;
 }
 mutex_unlock(&cgroup_mutex);
 set_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags);





 ret = cgroup_call_pre_destroy(cgrp);
 if (ret) {
  clear_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
  return ret;
 }

 mutex_lock(&cgroup_mutex);
 parent = cgrp->parent;
 if (atomic_read(&cgrp->count) || !list_empty(&cgrp->children)) {
  clear_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
  mutex_unlock(&cgroup_mutex);
  return -EBUSY;
 }
 prepare_to_wait(&cgroup_rmdir_waitq, &wait, TASK_INTERRUPTIBLE);
 if (!cgroup_clear_css_refs(cgrp)) {
  mutex_unlock(&cgroup_mutex);




  if (test_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags))
   schedule();
  finish_wait(&cgroup_rmdir_waitq, &wait);
  clear_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
  if (signal_pending(current))
   return -EINTR;
  goto again;
 }

 finish_wait(&cgroup_rmdir_waitq, &wait);
 clear_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags);

 spin_lock(&release_list_lock);
 set_bit(CGRP_REMOVED, &cgrp->flags);
 if (!list_empty(&cgrp->release_list))
  list_del(&cgrp->release_list);
 spin_unlock(&release_list_lock);

 cgroup_lock_hierarchy(cgrp->root);

 list_del(&cgrp->sibling);
 cgroup_unlock_hierarchy(cgrp->root);

 spin_lock(&cgrp->dentry->d_lock);
 d = dget(cgrp->dentry);
 spin_unlock(&d->d_lock);

 cgroup_d_remove_dir(d);
 dput(d);

 set_bit(CGRP_RELEASABLE, &parent->flags);
 check_for_release(parent);

 mutex_unlock(&cgroup_mutex);
 return 0;
}
