
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_mode; scalar_t__ i_gid; scalar_t__ i_uid; } ;
struct dentry {struct inode* d_inode; } ;
struct cred {scalar_t__ egid; scalar_t__ euid; } ;


 int S_IFDIR ;
 int S_IRUGO ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IXUGO ;
 struct cred* __task_cred (struct task_struct*) ;
 int d_drop (struct dentry*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 scalar_t__ task_dumpable (struct task_struct*) ;

int pid_revalidate(struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 struct task_struct *task = get_proc_task(inode);
 const struct cred *cred;

 if (task) {
  if ((inode->i_mode == (S_IFDIR|S_IRUGO|S_IXUGO)) ||
      task_dumpable(task)) {
   rcu_read_lock();
   cred = __task_cred(task);
   inode->i_uid = cred->euid;
   inode->i_gid = cred->egid;
   rcu_read_unlock();
  } else {
   inode->i_uid = 0;
   inode->i_gid = 0;
  }
  inode->i_mode &= ~(S_ISUID | S_ISGID);
  security_task_to_inode(task, inode);
  put_task_struct(task);
  return 1;
 }
 d_drop(dentry);
 return 0;
}
