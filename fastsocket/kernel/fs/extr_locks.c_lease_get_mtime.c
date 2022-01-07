
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct inode {struct timespec i_mtime; int i_sb; struct file_lock* i_flock; } ;
struct file_lock {int fl_type; } ;


 int F_WRLCK ;
 scalar_t__ IS_LEASE (struct file_lock*) ;
 struct timespec current_fs_time (int ) ;

void lease_get_mtime(struct inode *inode, struct timespec *time)
{
 struct file_lock *flock = inode->i_flock;
 if (flock && IS_LEASE(flock) && (flock->fl_type & F_WRLCK))
  *time = current_fs_time(inode->i_sb);
 else
  *time = inode->i_mtime;
}
