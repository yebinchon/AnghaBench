
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file_lock {int fl_type; scalar_t__ fl_nspid; int fl_pid; struct file_lock* fl_next; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct file_lock* i_flock; } ;


 int F_UNLCK ;
 int IS_POSIX (struct file_lock*) ;
 int __locks_copy_lock (struct file_lock*,struct file_lock*) ;
 int lock_kernel () ;
 int pid_vnr (scalar_t__) ;
 scalar_t__ posix_locks_conflict (struct file_lock*,struct file_lock*) ;
 int unlock_kernel () ;

void
posix_test_lock(struct file *filp, struct file_lock *fl)
{
 struct file_lock *cfl;

 lock_kernel();
 for (cfl = filp->f_path.dentry->d_inode->i_flock; cfl; cfl = cfl->fl_next) {
  if (!IS_POSIX(cfl))
   continue;
  if (posix_locks_conflict(fl, cfl))
   break;
 }
 if (cfl) {
  __locks_copy_lock(fl, cfl);
  if (cfl->fl_nspid)
   fl->fl_pid = pid_vnr(cfl->fl_nspid);
 } else
  fl->fl_type = F_UNLCK;
 unlock_kernel();
 return;
}
