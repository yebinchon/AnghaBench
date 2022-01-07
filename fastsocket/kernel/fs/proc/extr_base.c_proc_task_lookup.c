
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
 struct task_struct* find_task_by_pid_ns (unsigned int,struct pid_namespace*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int get_task_struct (struct task_struct*) ;
 unsigned int name_to_int (struct dentry*) ;
 struct dentry* proc_task_instantiate (struct inode*,struct dentry*,struct task_struct*,int *) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int same_thread_group (struct task_struct*,struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_task_lookup(struct inode *dir, struct dentry * dentry, struct nameidata *nd)
{
 struct dentry *result = ERR_PTR(-ENOENT);
 struct task_struct *task;
 struct task_struct *leader = get_proc_task(dir);
 unsigned tid;
 struct pid_namespace *ns;

 if (!leader)
  goto out_no_task;

 tid = name_to_int(dentry);
 if (tid == ~0U)
  goto out;

 ns = dentry->d_sb->s_fs_info;
 rcu_read_lock();
 task = find_task_by_pid_ns(tid, ns);
 if (task)
  get_task_struct(task);
 rcu_read_unlock();
 if (!task)
  goto out;
 if (!same_thread_group(leader, task))
  goto out_drop_task;

 result = proc_task_instantiate(dir, dentry, task, ((void*)0));
out_drop_task:
 put_task_struct(task);
out:
 put_task_struct(leader);
out_no_task:
 return result;
}
