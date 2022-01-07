
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct files_struct {int file_lock; } ;
struct file {scalar_t__ f_pos; int f_flags; struct path f_path; } ;


 int ENOENT ;
 int PROC_FDINFO_MAX ;
 struct file* fcheck_files (struct files_struct*,int) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int path_get (struct path*) ;
 int proc_fd (struct inode*) ;
 int put_files_struct (struct files_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int snprintf (char*,int ,char*,long long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int proc_fd_info(struct inode *inode, struct path *path, char *info)
{
 struct task_struct *task = get_proc_task(inode);
 struct files_struct *files = ((void*)0);
 struct file *file;
 int fd = proc_fd(inode);

 if (task) {
  files = get_files_struct(task);
  put_task_struct(task);
 }
 if (files) {




  spin_lock(&files->file_lock);
  file = fcheck_files(files, fd);
  if (file) {
   if (path) {
    *path = file->f_path;
    path_get(&file->f_path);
   }
   if (info)
    snprintf(info, PROC_FDINFO_MAX,
      "pos:\t%lli\n"
      "flags:\t0%o\n",
      (long long) file->f_pos,
      file->f_flags);
   spin_unlock(&files->file_lock);
   put_files_struct(files);
   return 0;
  }
  spin_unlock(&files->file_lock);
  put_files_struct(files);
 }
 return -ENOENT;
}
