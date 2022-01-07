
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {scalar_t__ i_uid; struct file_lock* i_flock; int i_count; int i_writecount; int i_mode; } ;
struct file_lock {long fl_type; TYPE_2__* fl_lmops; struct file_lock* fl_next; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int d_count; struct inode* d_inode; } ;
struct TYPE_4__ {int (* fl_change ) (struct file_lock**,long) ;scalar_t__ (* fl_mylease ) (struct file_lock*,struct file_lock*) ;int fl_break; } ;


 int BUG_ON (int) ;
 int CAP_LEASE ;
 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 long F_INPROGRESS ;
 long F_RDLCK ;
 long F_UNLCK ;
 long F_WRLCK ;
 scalar_t__ IS_LEASE (struct file_lock*) ;
 int S_ISREG (int ) ;
 int atomic_read (int *) ;
 int capable (int ) ;
 scalar_t__ current_fsuid () ;
 int leases_enable ;
 struct file_lock* locks_alloc_lock () ;
 int locks_copy_lock (struct file_lock*,struct file_lock*) ;
 int locks_free_lock (struct file_lock*) ;
 int locks_insert_lock (struct file_lock**,struct file_lock*) ;
 int security_file_lock (struct file*,long) ;
 scalar_t__ stub1 (struct file_lock*,struct file_lock*) ;
 int stub2 (struct file_lock**,long) ;
 int time_out_leases (struct inode*) ;

int generic_setlease(struct file *filp, long arg, struct file_lock **flp)
{
 struct file_lock *fl, **before, **my_before = ((void*)0), *lease;
 struct file_lock *new_fl = ((void*)0);
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 int error, rdlease_count = 0, wrlease_count = 0;

 if ((current_fsuid() != inode->i_uid) && !capable(CAP_LEASE))
  return -EACCES;
 if (!S_ISREG(inode->i_mode))
  return -EINVAL;
 error = security_file_lock(filp, arg);
 if (error)
  return error;

 time_out_leases(inode);

 BUG_ON(!(*flp)->fl_lmops->fl_break);

 lease = *flp;

 if (arg != F_UNLCK) {
  error = -ENOMEM;
  new_fl = locks_alloc_lock();
  if (new_fl == ((void*)0))
   goto out;

  error = -EAGAIN;
  if ((arg == F_RDLCK) && (atomic_read(&inode->i_writecount) > 0))
   goto out;
  if ((arg == F_WRLCK)
      && ((atomic_read(&dentry->d_count) > 1)
   || (atomic_read(&inode->i_count) > 1)))
   goto out;
 }
 for (before = &inode->i_flock;
   ((fl = *before) != ((void*)0)) && IS_LEASE(fl);
   before = &fl->fl_next) {
  if (lease->fl_lmops->fl_mylease(fl, lease))
   my_before = before;
  else if (fl->fl_type == (F_INPROGRESS | F_UNLCK))





   wrlease_count++;
  else
   rdlease_count++;
 }

 error = -EAGAIN;
 if ((arg == F_RDLCK && (wrlease_count > 0)) ||
     (arg == F_WRLCK && ((rdlease_count + wrlease_count) > 0)))
  goto out;

 if (my_before != ((void*)0)) {
  *flp = *my_before;
  error = lease->fl_lmops->fl_change(my_before, arg);
  goto out;
 }

 error = 0;
 if (arg == F_UNLCK)
  goto out;

 error = -EINVAL;
 if (!leases_enable)
  goto out;

 locks_copy_lock(new_fl, lease);
 locks_insert_lock(before, new_fl);

 *flp = new_fl;
 return 0;

out:
 if (new_fl != ((void*)0))
  locks_free_lock(new_fl);
 return error;
}
