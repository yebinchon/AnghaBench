
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segctor_wait_request {int err; int wq; int done; scalar_t__ seq; } ;
struct nilfs_sc_info {int sc_wait_request; int sc_wait_daemon; int sc_state_lock; scalar_t__ sc_seq_request; } ;


 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int current ;
 int finish_wait (int *,int *) ;
 int init_wait (int *) ;
 int init_waitqueue_entry (int *,int ) ;
 int schedule () ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int nilfs_segctor_sync(struct nilfs_sc_info *sci)
{
 struct nilfs_segctor_wait_request wait_req;
 int err = 0;

 spin_lock(&sci->sc_state_lock);
 init_wait(&wait_req.wq);
 wait_req.err = 0;
 atomic_set(&wait_req.done, 0);
 wait_req.seq = ++sci->sc_seq_request;
 spin_unlock(&sci->sc_state_lock);

 init_waitqueue_entry(&wait_req.wq, current);
 add_wait_queue(&sci->sc_wait_request, &wait_req.wq);
 set_current_state(TASK_INTERRUPTIBLE);
 wake_up(&sci->sc_wait_daemon);

 for (;;) {
  if (atomic_read(&wait_req.done)) {
   err = wait_req.err;
   break;
  }
  if (!signal_pending(current)) {
   schedule();
   continue;
  }
  err = -ERESTARTSYS;
  break;
 }
 finish_wait(&sci->sc_wait_request, &wait_req.wq);
 return err;
}
