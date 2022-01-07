
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int d_drop (struct dentry*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_base_revalidate(struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 struct task_struct *task = get_proc_task(inode);
 if (task) {
  put_task_struct(task);
  return 1;
 }
 d_drop(dentry);
 return 0;
}
