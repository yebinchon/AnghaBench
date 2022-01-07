
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int * congestion_wqh ;
 int finish_wait (int *,int *) ;
 long io_schedule_timeout (long) ;
 int prepare_to_wait (int *,int *,int ) ;
 int wait ;

long congestion_wait(int sync, long timeout)
{
 long ret;
 DEFINE_WAIT(wait);
 wait_queue_head_t *wqh = &congestion_wqh[sync];

 prepare_to_wait(wqh, &wait, TASK_UNINTERRUPTIBLE);
 ret = io_schedule_timeout(timeout);
 finish_wait(wqh, &wait);
 return ret;
}
