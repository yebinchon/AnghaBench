
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_next; int fl_wait; } ;
struct file {int dummy; } ;


 int FILE_LOCK_DEFERRED ;
 int locks_delete_block (struct file_lock*) ;
 int might_sleep () ;
 int posix_lock_file (struct file*,struct file_lock*,int *) ;
 int wait_event_interruptible (int ,int) ;

int posix_lock_file_wait(struct file *filp, struct file_lock *fl)
{
 int error;
 might_sleep ();
 for (;;) {
  error = posix_lock_file(filp, fl, ((void*)0));
  if (error != FILE_LOCK_DEFERRED)
   break;
  error = wait_event_interruptible(fl->fl_wait, !fl->fl_next);
  if (!error)
   continue;

  locks_delete_block(fl);
  break;
 }
 return error;
}
