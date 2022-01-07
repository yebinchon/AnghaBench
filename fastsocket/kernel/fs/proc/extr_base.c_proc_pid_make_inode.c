
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct proc_inode {int pid; } ;
struct inode {int i_gid; int i_uid; int * i_op; int i_ctime; int i_atime; int i_mtime; } ;
struct cred {int egid; int euid; } ;


 int CURRENT_TIME ;
 int PIDTYPE_PID ;
 struct proc_inode* PROC_I (struct inode*) ;
 struct cred* __task_cred (struct task_struct*) ;
 int get_task_pid (struct task_struct*,int ) ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int proc_def_inode_operations ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 scalar_t__ task_dumpable (struct task_struct*) ;

struct inode *proc_pid_make_inode(struct super_block * sb, struct task_struct *task)
{
 struct inode * inode;
 struct proc_inode *ei;
 const struct cred *cred;



 inode = new_inode(sb);
 if (!inode)
  goto out;


 ei = PROC_I(inode);
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 inode->i_op = &proc_def_inode_operations;




 ei->pid = get_task_pid(task, PIDTYPE_PID);
 if (!ei->pid)
  goto out_unlock;

 if (task_dumpable(task)) {
  rcu_read_lock();
  cred = __task_cred(task);
  inode->i_uid = cred->euid;
  inode->i_gid = cred->egid;
  rcu_read_unlock();
 }
 security_task_to_inode(task, inode);

out:
 return inode;

out_unlock:
 iput(inode);
 return ((void*)0);
}
