
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int proc_get_link; } ;
struct proc_inode {unsigned int fd; TYPE_1__ op; } ;
struct inode {int i_mode; int i_size; int * i_op; int i_sb; } ;
struct files_struct {int file_lock; } ;
struct file {int f_mode; } ;
struct dentry {int * d_op; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFLNK ;
 int S_IRUSR ;
 int S_IWUSR ;
 int S_IXUSR ;
 int d_add (struct dentry*,struct inode*) ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 int iput (struct inode*) ;
 int proc_fd_link ;
 int proc_pid_link_inode_operations ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*) ;
 int put_files_struct (struct files_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tid_fd_dentry_operations ;
 scalar_t__ tid_fd_revalidate (struct dentry*,int *) ;

__attribute__((used)) static struct dentry *proc_fd_instantiate(struct inode *dir,
 struct dentry *dentry, struct task_struct *task, const void *ptr)
{
 unsigned fd = *(const unsigned *)ptr;
 struct file *file;
 struct files_struct *files;
  struct inode *inode;
  struct proc_inode *ei;
 struct dentry *error = ERR_PTR(-ENOENT);

 inode = proc_pid_make_inode(dir->i_sb, task);
 if (!inode)
  goto out;
 ei = PROC_I(inode);
 ei->fd = fd;
 files = get_files_struct(task);
 if (!files)
  goto out_iput;
 inode->i_mode = S_IFLNK;





 spin_lock(&files->file_lock);
 file = fcheck_files(files, fd);
 if (!file)
  goto out_unlock;
 if (file->f_mode & FMODE_READ)
  inode->i_mode |= S_IRUSR | S_IXUSR;
 if (file->f_mode & FMODE_WRITE)
  inode->i_mode |= S_IWUSR | S_IXUSR;
 spin_unlock(&files->file_lock);
 put_files_struct(files);

 inode->i_op = &proc_pid_link_inode_operations;
 inode->i_size = 64;
 ei->op.proc_get_link = proc_fd_link;
 dentry->d_op = &tid_fd_dentry_operations;
 d_add(dentry, inode);

 if (tid_fd_revalidate(dentry, ((void*)0)))
  error = ((void*)0);

 out:
 return error;
out_unlock:
 spin_unlock(&files->file_lock);
 put_files_struct(files);
out_iput:
 iput(inode);
 goto out;
}
