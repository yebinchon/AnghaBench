
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock {int fl_flags; int fl_next; int fl_wait; void* fl_end; void* fl_start; int fl_type; struct file* fl_file; int fl_pid; int fl_owner; } ;
struct file {int f_flags; } ;
typedef void* loff_t ;
struct TYPE_2__ {int tgid; int files; } ;


 int FILE_LOCK_DEFERRED ;
 int FLOCK_VERIFY_WRITE ;
 int FL_ACCESS ;
 int FL_POSIX ;
 int FL_SLEEP ;
 int F_RDLCK ;
 int F_WRLCK ;
 int O_NONBLOCK ;
 scalar_t__ __mandatory_lock (struct inode*) ;
 int __posix_lock_file (struct inode*,struct file_lock*,int *) ;
 TYPE_1__* current ;
 int locks_delete_block (struct file_lock*) ;
 int locks_init_lock (struct file_lock*) ;
 int wait_event_interruptible (int ,int) ;

int locks_mandatory_area(int read_write, struct inode *inode,
    struct file *filp, loff_t offset,
    size_t count)
{
 struct file_lock fl;
 int error;

 locks_init_lock(&fl);
 fl.fl_owner = current->files;
 fl.fl_pid = current->tgid;
 fl.fl_file = filp;
 fl.fl_flags = FL_POSIX | FL_ACCESS;
 if (filp && !(filp->f_flags & O_NONBLOCK))
  fl.fl_flags |= FL_SLEEP;
 fl.fl_type = (read_write == FLOCK_VERIFY_WRITE) ? F_WRLCK : F_RDLCK;
 fl.fl_start = offset;
 fl.fl_end = offset + count - 1;

 for (;;) {
  error = __posix_lock_file(inode, &fl, ((void*)0));
  if (error != FILE_LOCK_DEFERRED)
   break;
  error = wait_event_interruptible(fl.fl_wait, !fl.fl_next);
  if (!error) {




   if (__mandatory_lock(inode))
    continue;
  }

  locks_delete_block(&fl);
  break;
 }

 return error;
}
