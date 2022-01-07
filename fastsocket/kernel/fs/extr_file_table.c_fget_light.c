
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int count; } ;
struct file {int f_count; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 scalar_t__ atomic_long_inc_not_zero (int *) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct file *fget_light(unsigned int fd, int *fput_needed)
{
 struct file *file;
 struct files_struct *files = current->files;

 *fput_needed = 0;
 if (likely((atomic_read(&files->count) == 1))) {
  file = fcheck_files(files, fd);
 } else {
  rcu_read_lock();
  file = fcheck_files(files, fd);
  if (file) {
   if (atomic_long_inc_not_zero(&file->f_count))
    *fput_needed = 1;
   else

    file = ((void*)0);
  }
  rcu_read_unlock();
 }

 return file;
}
