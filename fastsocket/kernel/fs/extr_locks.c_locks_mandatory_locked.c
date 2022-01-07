
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct file_lock* i_flock; } ;
struct file_lock {scalar_t__ fl_owner; struct file_lock* fl_next; } ;
typedef scalar_t__ fl_owner_t ;
struct TYPE_2__ {scalar_t__ files; } ;


 int EAGAIN ;
 int IS_POSIX (struct file_lock*) ;
 TYPE_1__* current ;
 int lock_kernel () ;
 int unlock_kernel () ;

int locks_mandatory_locked(struct inode *inode)
{
 fl_owner_t owner = current->files;
 struct file_lock *fl;




 lock_kernel();
 for (fl = inode->i_flock; fl != ((void*)0); fl = fl->fl_next) {
  if (!IS_POSIX(fl))
   continue;
  if (fl->fl_owner != owner)
   break;
 }
 unlock_kernel();
 return fl ? -EAGAIN : 0;
}
