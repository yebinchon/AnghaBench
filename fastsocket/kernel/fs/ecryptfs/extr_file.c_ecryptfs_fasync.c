
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* fasync ) (int,struct file*,int) ;} ;


 struct file* ecryptfs_file_to_lower (struct file*) ;
 int lock_kernel () ;
 int stub1 (int,struct file*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int ecryptfs_fasync(int fd, struct file *file, int flag)
{
 int rc = 0;
 struct file *lower_file = ((void*)0);

 lock_kernel();
 lower_file = ecryptfs_file_to_lower(file);
 if (lower_file->f_op && lower_file->f_op->fasync)
  rc = lower_file->f_op->fasync(fd, lower_file, flag);
 unlock_kernel();
 return rc;
}
