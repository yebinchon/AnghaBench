
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 int get_fs_path (struct task_struct*,struct path*,int) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_root_link(struct inode *inode, struct path *path)
{
 struct task_struct *task = get_proc_task(inode);
 int result = -ENOENT;

 if (task) {
  result = get_fs_path(task, path, 1);
  put_task_struct(task);
 }
 return result;
}
