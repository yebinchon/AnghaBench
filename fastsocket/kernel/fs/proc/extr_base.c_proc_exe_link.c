
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;


 int ENOENT ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int path_get (struct path*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_exe_link(struct inode *inode, struct path *exe_path)
{
 struct task_struct *task;
 struct mm_struct *mm;
 struct file *exe_file;

 task = get_proc_task(inode);
 if (!task)
  return -ENOENT;
 mm = get_task_mm(task);
 put_task_struct(task);
 if (!mm)
  return -ENOENT;
 exe_file = get_mm_exe_file(mm);
 mmput(mm);
 if (exe_file) {
  *exe_path = exe_file->f_path;
  path_get(&exe_file->f_path);
  fput(exe_file);
  return 0;
 } else
  return -ENOENT;
}
