
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct fdtable {int close_on_exec; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int FD_CLR (unsigned int,int ) ;
 int FD_SET (unsigned int,int ) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void set_close_on_exec(unsigned int fd, int flag)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;
 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 if (flag)
  FD_SET(fd, fdt->close_on_exec);
 else
  FD_CLR(fd, fdt->close_on_exec);
 spin_unlock(&files->file_lock);
}
