
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {int close_on_exec; int ** fd; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int BUG_ON (int ) ;
 int FD_SET (unsigned int,int ) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_assign_pointer (int *,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void autofs_dev_ioctl_fd_install(unsigned int fd, struct file *file)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;

 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 BUG_ON(fdt->fd[fd] != ((void*)0));
 rcu_assign_pointer(fdt->fd[fd], file);
 FD_SET(fd, fdt->close_on_exec);
 spin_unlock(&files->file_lock);
}
