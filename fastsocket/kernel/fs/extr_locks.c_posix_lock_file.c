
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int __posix_lock_file (int ,struct file_lock*,struct file_lock*) ;

int posix_lock_file(struct file *filp, struct file_lock *fl,
   struct file_lock *conflock)
{
 return __posix_lock_file(filp->f_path.dentry->d_inode, fl, conflock);
}
