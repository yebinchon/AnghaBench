
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file_lock {int fl_flags; TYPE_4__* fl_ops; int * fl_lmops; struct file* fl_file; int fl_pid; int fl_owner; int fl_end; scalar_t__ fl_start; int fl_type; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
typedef int fl_owner_t ;
struct TYPE_10__ {int tgid; } ;
struct TYPE_9__ {int (* fl_release_private ) (struct file_lock*) ;} ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int i_flock; } ;


 int FL_CLOSE ;
 int FL_POSIX ;
 int F_SETLK ;
 int F_UNLCK ;
 int OFFSET_MAX ;
 TYPE_5__* current ;
 int stub1 (struct file_lock*) ;
 int vfs_lock_file (struct file*,int ,struct file_lock*,int *) ;

void locks_remove_posix(struct file *filp, fl_owner_t owner)
{
 struct file_lock lock;






 if (!filp->f_path.dentry->d_inode->i_flock)
  return;

 lock.fl_type = F_UNLCK;
 lock.fl_flags = FL_POSIX | FL_CLOSE;
 lock.fl_start = 0;
 lock.fl_end = OFFSET_MAX;
 lock.fl_owner = owner;
 lock.fl_pid = current->tgid;
 lock.fl_file = filp;
 lock.fl_ops = ((void*)0);
 lock.fl_lmops = ((void*)0);

 vfs_lock_file(filp, F_SETLK, &lock, ((void*)0));

 if (lock.fl_ops && lock.fl_ops->fl_release_private)
  lock.fl_ops->fl_release_private(&lock);
}
