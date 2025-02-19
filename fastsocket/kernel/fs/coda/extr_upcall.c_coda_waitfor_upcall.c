
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upc_req {int uc_flags; int uc_sleep; int uc_chain; } ;
typedef int sigset_t ;


 scalar_t__ CODA_INTERRUPTIBLE (struct upc_req*) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 unsigned long HZ ;
 int REQ_ABORT ;
 int REQ_WRITE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int coda_block_signals (int *) ;
 unsigned long coda_timeout ;
 int coda_unblock_signals (int *) ;
 int current ;
 unsigned long jiffies ;
 int list_del (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wait ;

__attribute__((used)) static inline void coda_waitfor_upcall(struct upc_req *req)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long timeout = jiffies + coda_timeout * HZ;
 sigset_t old;
 int blocked;

 coda_block_signals(&old);
 blocked = 1;

 add_wait_queue(&req->uc_sleep, &wait);
 for (;;) {
  if (CODA_INTERRUPTIBLE(req))
   set_current_state(TASK_INTERRUPTIBLE);
  else
   set_current_state(TASK_UNINTERRUPTIBLE);


  if (req->uc_flags & (REQ_WRITE | REQ_ABORT))
   break;

  if (blocked && time_after(jiffies, timeout) &&
      CODA_INTERRUPTIBLE(req))
  {
   coda_unblock_signals(&old);
   blocked = 0;
  }

  if (signal_pending(current)) {
   list_del(&req->uc_chain);
   break;
  }

  if (blocked)
   schedule_timeout(HZ);
  else
   schedule();
 }
 if (blocked)
  coda_unblock_signals(&old);

 remove_wait_queue(&req->uc_sleep, &wait);
 set_current_state(TASK_RUNNING);
}
