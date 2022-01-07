
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* d_fsdata; } ;


 int S_IFDIR ;
 int cgroup_create (struct cgroup*,struct dentry*,int) ;

__attribute__((used)) static int cgroup_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct cgroup *c_parent = dentry->d_parent->d_fsdata;


 return cgroup_create(c_parent, dentry, mode | S_IFDIR);
}
