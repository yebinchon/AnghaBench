
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_inode {int op; } ;
struct pid_entry {int op; scalar_t__ fop; scalar_t__ iop; int mode; } ;
struct inode {int i_nlink; scalar_t__ i_fop; scalar_t__ i_op; int i_mode; int i_sb; } ;
struct dentry {int * d_op; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct proc_inode* PROC_I (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int pid_dentry_operations ;
 scalar_t__ pid_revalidate (struct dentry*,int *) ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_pident_instantiate(struct inode *dir,
 struct dentry *dentry, struct task_struct *task, const void *ptr)
{
 const struct pid_entry *p = ptr;
 struct inode *inode;
 struct proc_inode *ei;
 struct dentry *error = ERR_PTR(-ENOENT);

 inode = proc_pid_make_inode(dir->i_sb, task);
 if (!inode)
  goto out;

 ei = PROC_I(inode);
 inode->i_mode = p->mode;
 if (S_ISDIR(inode->i_mode))
  inode->i_nlink = 2;
 if (p->iop)
  inode->i_op = p->iop;
 if (p->fop)
  inode->i_fop = p->fop;
 ei->op = p->op;
 dentry->d_op = &pid_dentry_operations;
 d_add(dentry, inode);

 if (pid_revalidate(dentry, ((void*)0)))
  error = ((void*)0);
out:
 return error;
}
