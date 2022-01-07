
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int IS_POSIX (struct file_lock*) ;
 int locks_conflict (struct file_lock*,struct file_lock*) ;
 int locks_overlap (struct file_lock*,struct file_lock*) ;
 scalar_t__ posix_same_owner (struct file_lock*,struct file_lock*) ;

__attribute__((used)) static int posix_locks_conflict(struct file_lock *caller_fl, struct file_lock *sys_fl)
{



 if (!IS_POSIX(sys_fl) || posix_same_owner(caller_fl, sys_fl))
  return (0);


 if (!locks_overlap(caller_fl, sys_fl))
  return 0;

 return (locks_conflict(caller_fl, sys_fl));
}
