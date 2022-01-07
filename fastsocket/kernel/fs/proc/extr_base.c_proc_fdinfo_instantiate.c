
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_inode {unsigned int fd; } ;
struct inode {int i_mode; int * i_fop; int i_sb; } ;
struct dentry {int * d_op; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFREG ;
 int S_IRUSR ;
 int d_add (struct dentry*,struct inode*) ;
 int proc_fdinfo_file_operations ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*) ;
 int tid_fd_dentry_operations ;
 scalar_t__ tid_fd_revalidate (struct dentry*,int *) ;

__attribute__((used)) static struct dentry *proc_fdinfo_instantiate(struct inode *dir,
 struct dentry *dentry, struct task_struct *task, const void *ptr)
{
 unsigned fd = *(unsigned *)ptr;
  struct inode *inode;
  struct proc_inode *ei;
 struct dentry *error = ERR_PTR(-ENOENT);

 inode = proc_pid_make_inode(dir->i_sb, task);
 if (!inode)
  goto out;
 ei = PROC_I(inode);
 ei->fd = fd;
 inode->i_mode = S_IFREG | S_IRUSR;
 inode->i_fop = &proc_fdinfo_file_operations;
 dentry->d_op = &tid_fd_dentry_operations;
 d_add(dentry, inode);

 if (tid_fd_revalidate(dentry, ((void*)0)))
  error = ((void*)0);

 out:
 return error;
}
