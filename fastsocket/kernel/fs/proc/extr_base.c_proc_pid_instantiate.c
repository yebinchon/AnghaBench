
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int i_flags; int * i_fop; int * i_op; int i_sb; } ;
struct dentry {int * d_op; } ;


 int ARRAY_SIZE (int ) ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int S_IFDIR ;
 int S_IMMUTABLE ;
 int S_IRUGO ;
 int S_IXUGO ;
 int d_add (struct dentry*,struct inode*) ;
 int pid_dentry_operations ;
 scalar_t__ pid_entry_count_dirs (int ,int ) ;
 scalar_t__ pid_revalidate (struct dentry*,int *) ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*) ;
 int proc_tgid_base_inode_operations ;
 int proc_tgid_base_operations ;
 int tgid_base_stuff ;

__attribute__((used)) static struct dentry *proc_pid_instantiate(struct inode *dir,
        struct dentry * dentry,
        struct task_struct *task, const void *ptr)
{
 struct dentry *error = ERR_PTR(-ENOENT);
 struct inode *inode;

 inode = proc_pid_make_inode(dir->i_sb, task);
 if (!inode)
  goto out;

 inode->i_mode = S_IFDIR|S_IRUGO|S_IXUGO;
 inode->i_op = &proc_tgid_base_inode_operations;
 inode->i_fop = &proc_tgid_base_operations;
 inode->i_flags|=S_IMMUTABLE;

 inode->i_nlink = 2 + pid_entry_count_dirs(tgid_base_stuff,
  ARRAY_SIZE(tgid_base_stuff));

 dentry->d_op = &pid_dentry_operations;

 d_add(dentry, inode);

 if (pid_revalidate(dentry, ((void*)0)))
  error = ((void*)0);
out:
 return error;
}
