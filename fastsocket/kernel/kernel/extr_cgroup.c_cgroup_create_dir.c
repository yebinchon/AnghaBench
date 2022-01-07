
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int d_inode; struct cgroup* d_fsdata; } ;
struct cgroup {int dentry; TYPE_2__* root; TYPE_1__* parent; } ;
typedef int mode_t ;
struct TYPE_4__ {int sb; } ;
struct TYPE_3__ {struct dentry* dentry; } ;


 int S_IFDIR ;
 int cgroup_create_file (struct dentry*,int,int ) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int inc_nlink (int ) ;
 int rcu_assign_pointer (int ,struct dentry*) ;

__attribute__((used)) static int cgroup_create_dir(struct cgroup *cgrp, struct dentry *dentry,
    mode_t mode)
{
 struct dentry *parent;
 int error = 0;

 parent = cgrp->parent->dentry;
 error = cgroup_create_file(dentry, S_IFDIR | mode, cgrp->root->sb);
 if (!error) {
  dentry->d_fsdata = cgrp;
  inc_nlink(parent->d_inode);
  rcu_assign_pointer(cgrp->dentry, dentry);
  dget(dentry);
 }
 dput(dentry);

 return error;
}
