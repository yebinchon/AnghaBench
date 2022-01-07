
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int rwait; int mut; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int usblp_rtest (struct usblp*,int) ;
 int waita ;

__attribute__((used)) static int usblp_rwait_and_lock(struct usblp *usblp, int nonblock)
{
 DECLARE_WAITQUEUE(waita, current);
 int rc;

 add_wait_queue(&usblp->rwait, &waita);
 for (;;) {
  if (mutex_lock_interruptible(&usblp->mut)) {
   rc = -EINTR;
   break;
  }
  set_current_state(TASK_INTERRUPTIBLE);
  if ((rc = usblp_rtest(usblp, nonblock)) < 0) {
   mutex_unlock(&usblp->mut);
   break;
  }
  if (rc == 0)
   break;
  mutex_unlock(&usblp->mut);
  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&usblp->rwait, &waita);
 return rc;
}
