
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_file; int fl_type; } ;


 int IS_FLOCK (struct file_lock*) ;
 int LOCK_MAND ;
 int locks_conflict (struct file_lock*,struct file_lock*) ;

__attribute__((used)) static int flock_locks_conflict(struct file_lock *caller_fl, struct file_lock *sys_fl)
{



 if (!IS_FLOCK(sys_fl) || (caller_fl->fl_file == sys_fl->fl_file))
  return (0);
 if ((caller_fl->fl_type & LOCK_MAND) || (sys_fl->fl_type & LOCK_MAND))
  return 0;

 return (locks_conflict(caller_fl, sys_fl));
}
