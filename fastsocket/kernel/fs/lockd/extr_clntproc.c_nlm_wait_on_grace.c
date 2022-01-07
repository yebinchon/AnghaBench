
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int NLMCLNT_GRACE_WAIT ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int ) ;
 int signalled () ;
 int try_to_freeze () ;
 int wait ;

__attribute__((used)) static int nlm_wait_on_grace(wait_queue_head_t *queue)
{
 DEFINE_WAIT(wait);
 int status = -EINTR;

 prepare_to_wait(queue, &wait, TASK_INTERRUPTIBLE);
 if (!signalled ()) {
  schedule_timeout(NLMCLNT_GRACE_WAIT);
  try_to_freeze();
  if (!signalled ())
   status = 0;
 }
 finish_wait(queue, &wait);
 return status;
}
