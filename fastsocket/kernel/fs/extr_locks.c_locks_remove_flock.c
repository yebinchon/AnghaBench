
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {struct file_lock* i_flock; } ;
struct file_lock {struct file_lock* fl_next; struct file* fl_file; TYPE_4__* fl_ops; int fl_end; int fl_type; int fl_flags; int fl_pid; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
struct TYPE_10__ {int tgid; } ;
struct TYPE_9__ {int (* fl_release_private ) (struct file_lock*) ;} ;
struct TYPE_8__ {int (* flock ) (struct file*,int ,struct file_lock*) ;} ;
struct TYPE_6__ {struct inode* d_inode; } ;


 int BUG () ;
 int FL_FLOCK ;
 int F_SETLKW ;
 int F_UNLCK ;
 scalar_t__ IS_FLOCK (struct file_lock*) ;
 scalar_t__ IS_LEASE (struct file_lock*) ;
 int OFFSET_MAX ;
 TYPE_5__* current ;
 int lease_modify (struct file_lock**,int ) ;
 int lock_kernel () ;
 int locks_delete_lock (struct file_lock**) ;
 int stub1 (struct file*,int ,struct file_lock*) ;
 int stub2 (struct file_lock*) ;
 int unlock_kernel () ;

void locks_remove_flock(struct file *filp)
{
 struct inode * inode = filp->f_path.dentry->d_inode;
 struct file_lock *fl;
 struct file_lock **before;

 if (!inode->i_flock)
  return;

 if (filp->f_op && filp->f_op->flock) {
  struct file_lock fl = {
   .fl_pid = current->tgid,
   .fl_file = filp,
   .fl_flags = FL_FLOCK,
   .fl_type = F_UNLCK,
   .fl_end = OFFSET_MAX,
  };
  filp->f_op->flock(filp, F_SETLKW, &fl);
  if (fl.fl_ops && fl.fl_ops->fl_release_private)
   fl.fl_ops->fl_release_private(&fl);
 }

 lock_kernel();
 before = &inode->i_flock;

 while ((fl = *before) != ((void*)0)) {
  if (fl->fl_file == filp) {
   if (IS_FLOCK(fl)) {
    locks_delete_lock(before);
    continue;
   }
   if (IS_LEASE(fl)) {
    lease_modify(before, F_UNLCK);
    continue;
   }

   BUG();
   }
  before = &fl->fl_next;
 }
 unlock_kernel();
}
