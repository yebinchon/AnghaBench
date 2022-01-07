
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_next; int fl_wait; int fl_type; } ;
struct file {int dummy; } ;


 int FILE_LOCK_DEFERRED ;
 int locks_delete_block (struct file_lock*) ;
 int security_file_lock (struct file*,int ) ;
 int vfs_lock_file (struct file*,unsigned int,struct file_lock*,int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int do_lock_file_wait(struct file *filp, unsigned int cmd,
        struct file_lock *fl)
{
 int error;

 error = security_file_lock(filp, fl->fl_type);
 if (error)
  return error;

 for (;;) {
  error = vfs_lock_file(filp, cmd, fl, ((void*)0));
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
