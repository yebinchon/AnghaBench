
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_inode {int op; int pid; } ;
struct pid_entry {int op; scalar_t__ fop; scalar_t__ iop; int mode; } ;
struct inode {int i_nlink; int i_size; scalar_t__ i_fop; scalar_t__ i_op; int i_mode; int i_ctime; int i_atime; int i_mtime; int i_sb; } ;
struct dentry {int * d_op; } ;


 int CURRENT_TIME ;
 int EINVAL ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int PIDTYPE_PID ;
 struct proc_inode* PROC_I (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int get_task_pid (struct task_struct*,int ) ;
 int iput (struct inode*) ;
 struct inode* new_inode (int ) ;
 int proc_base_dentry_operations ;

__attribute__((used)) static struct dentry *proc_base_instantiate(struct inode *dir,
 struct dentry *dentry, struct task_struct *task, const void *ptr)
{
 const struct pid_entry *p = ptr;
 struct inode *inode;
 struct proc_inode *ei;
 struct dentry *error = ERR_PTR(-EINVAL);


 error = ERR_PTR(-ENOMEM);
 inode = new_inode(dir->i_sb);
 if (!inode)
  goto out;


 ei = PROC_I(inode);
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;




 ei->pid = get_task_pid(task, PIDTYPE_PID);
 if (!ei->pid)
  goto out_iput;

 inode->i_mode = p->mode;
 if (S_ISDIR(inode->i_mode))
  inode->i_nlink = 2;
 if (S_ISLNK(inode->i_mode))
  inode->i_size = 64;
 if (p->iop)
  inode->i_op = p->iop;
 if (p->fop)
  inode->i_fop = p->fop;
 ei->op = p->op;
 dentry->d_op = &proc_base_dentry_operations;
 d_add(dentry, inode);
 error = ((void*)0);
out:
 return error;
out_iput:
 iput(inode);
 goto out;
}
