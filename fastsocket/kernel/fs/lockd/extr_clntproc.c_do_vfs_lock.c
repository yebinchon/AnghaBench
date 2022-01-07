
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_flags; int fl_file; } ;


 int BUG () ;


 int flock_lock_file_wait (int ,struct file_lock*) ;
 int posix_lock_file_wait (int ,struct file_lock*) ;

__attribute__((used)) static int do_vfs_lock(struct file_lock *fl)
{
 int res = 0;
 switch (fl->fl_flags & (128|129)) {
  case 128:
   res = posix_lock_file_wait(fl->fl_file, fl);
   break;
  case 129:
   res = flock_lock_file_wait(fl->fl_file, fl);
   break;
  default:
   BUG();
 }
 return res;
}
