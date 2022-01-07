
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct file {int f_count; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int atomic_long_inc_not_zero (int *) ;
 TYPE_1__* current ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct file *fget(unsigned int fd)
{
 struct file *file;
 struct files_struct *files = current->files;

 rcu_read_lock();
 file = fcheck_files(files, fd);
 if (file) {
  if (!atomic_long_inc_not_zero(&file->f_count)) {

   rcu_read_unlock();
   return ((void*)0);
  }
 }
 rcu_read_unlock();

 return file;
}
