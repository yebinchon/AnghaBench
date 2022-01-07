
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct proc_inode {int ns_ops; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {struct inode* d_inode; } ;


 int EACCES ;
 void* ERR_CAST (struct dentry*) ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct proc_inode* PROC_I (struct inode*) ;
 int PTRACE_MODE_READ ;
 int dput (struct dentry*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 struct dentry* proc_ns_get_dentry (struct super_block*,struct task_struct*,int ) ;
 int ptrace_may_access (struct task_struct*,int ) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static void *proc_ns_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 struct super_block *sb = inode->i_sb;
 struct proc_inode *ei = PROC_I(inode);
 struct task_struct *task;
 struct dentry *ns_dentry;
 void *error = ERR_PTR(-EACCES);

 task = get_proc_task(inode);
 if (!task)
  goto out;

 if (!ptrace_may_access(task, PTRACE_MODE_READ))
  goto out_put_task;

 ns_dentry = proc_ns_get_dentry(sb, task, ei->ns_ops);
 if (IS_ERR(ns_dentry)) {
  error = ERR_CAST(ns_dentry);
  goto out_put_task;
 }

 dput(nd->path.dentry);
 nd->path.dentry = ns_dentry;
 error = ((void*)0);

out_put_task:
 put_task_struct(task);
out:
 return error;
}
