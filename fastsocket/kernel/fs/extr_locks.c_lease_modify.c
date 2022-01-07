
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int F_UNLCK ;
 int assign_type (struct file_lock*,int) ;
 int locks_delete_lock (struct file_lock**) ;
 int locks_wake_up_blocks (struct file_lock*) ;

int lease_modify(struct file_lock **before, int arg)
{
 struct file_lock *fl = *before;
 int error = assign_type(fl, arg);

 if (error)
  return error;
 locks_wake_up_blocks(fl);
 if (arg == F_UNLCK)
  locks_delete_lock(before);
 return 0;
}
