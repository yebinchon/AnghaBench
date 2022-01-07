
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int __put_unused_fd (struct files_struct*,unsigned int) ;
 TYPE_1__* current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void put_unused_fd(unsigned int fd)
{
 struct files_struct *files = current->files;
 spin_lock(&files->file_lock);
 __put_unused_fd(files, fd);
 spin_unlock(&files->file_lock);
}
