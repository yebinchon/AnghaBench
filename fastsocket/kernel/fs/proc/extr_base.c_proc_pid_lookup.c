
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct task_struct* find_task_by_pid_ns (unsigned int,struct pid_namespace*) ;
 int get_task_struct (struct task_struct*) ;
 unsigned int name_to_int (struct dentry*) ;
 struct dentry* proc_base_lookup (struct inode*,struct dentry*) ;
 struct dentry* proc_pid_instantiate (struct inode*,struct dentry*,struct task_struct*,int *) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct dentry *proc_pid_lookup(struct inode *dir, struct dentry * dentry, struct nameidata *nd)
{
 struct dentry *result = ERR_PTR(-ENOENT);
 struct task_struct *task;
 unsigned tgid;
 struct pid_namespace *ns;

 result = proc_base_lookup(dir, dentry);
 if (!IS_ERR(result) || PTR_ERR(result) != -ENOENT)
  goto out;

 tgid = name_to_int(dentry);
 if (tgid == ~0U)
  goto out;

 ns = dentry->d_sb->s_fs_info;
 rcu_read_lock();
 task = find_task_by_pid_ns(tgid, ns);
 if (task)
  get_task_struct(task);
 rcu_read_unlock();
 if (!task)
  goto out;

 result = proc_pid_instantiate(dir, dentry, task, ((void*)0));
 put_task_struct(task);
out:
 return result;
}
