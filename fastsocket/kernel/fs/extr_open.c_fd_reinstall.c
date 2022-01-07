
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {int ** fd; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int BUG_ON (int ) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_assign_pointer (int *,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fd_reinstall(unsigned int fd, struct file *file)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;
 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 BUG_ON(fdt->fd[fd] == ((void*)0));
 rcu_assign_pointer(fdt->fd[fd], file);
 spin_unlock(&files->file_lock);
}
