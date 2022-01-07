
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_ns_operations {int dummy; } ;
struct proc_inode {struct proc_ns_operations const* ns_ops; } ;
struct inode {int i_mode; int * i_op; int i_sb; } ;
struct dentry {int * d_op; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int d_add (struct dentry*,struct inode*) ;
 int pid_dentry_operations ;
 scalar_t__ pid_revalidate (struct dentry*,int *) ;
 int proc_ns_link_inode_operations ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_ns_instantiate(struct inode *dir,
 struct dentry *dentry, struct task_struct *task, const void *ptr)
{
 const struct proc_ns_operations *ns_ops = ptr;
 struct inode *inode;
 struct proc_inode *ei;
 struct dentry *error = ERR_PTR(-ENOENT);

 inode = proc_pid_make_inode(dir->i_sb, task);
 if (!inode)
  goto out;

 ei = PROC_I(inode);
 inode->i_mode = S_IFLNK|S_IRWXUGO;
 inode->i_op = &proc_ns_link_inode_operations;
 ei->ns_ops = ns_ops;

 dentry->d_op = &pid_dentry_operations;
 d_add(dentry, inode);

 if (pid_revalidate(dentry, ((void*)0)))
  error = ((void*)0);
out:
 return error;
}
