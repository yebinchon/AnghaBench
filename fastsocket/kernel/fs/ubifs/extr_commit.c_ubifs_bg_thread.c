
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int bgt_name; scalar_t__ need_bgt; } ;
struct TYPE_2__ {int pid; } ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int cond_resched () ;
 TYPE_1__* current ;
 int dbg_msg (char*,int ,...) ;
 scalar_t__ kthread_should_stop () ;
 int run_bg_commit (struct ubifs_info*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 scalar_t__ try_to_freeze () ;
 int ubifs_bg_wbufs_sync (struct ubifs_info*) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;

int ubifs_bg_thread(void *info)
{
 int err;
 struct ubifs_info *c = info;

 dbg_msg("background thread \"%s\" started, PID %d",
  c->bgt_name, current->pid);
 set_freezable();

 while (1) {
  if (kthread_should_stop())
   break;

  if (try_to_freeze())
   continue;

  set_current_state(TASK_INTERRUPTIBLE);

  if (!c->need_bgt) {





   if (kthread_should_stop())
    break;
   schedule();
   continue;
  } else
   __set_current_state(TASK_RUNNING);

  c->need_bgt = 0;
  err = ubifs_bg_wbufs_sync(c);
  if (err)
   ubifs_ro_mode(c, err);

  run_bg_commit(c);
  cond_resched();
 }

 dbg_msg("background thread \"%s\" stops", c->bgt_name);
 return 0;
}
