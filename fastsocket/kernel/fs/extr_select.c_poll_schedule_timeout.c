
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_wqueues {int triggered; } ;
typedef int ktime_t ;


 int EINTR ;
 int HRTIMER_MODE_ABS ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int schedule_hrtimeout_range (int *,unsigned long,int ) ;
 int set_current_state (int) ;
 int set_mb (int ,int ) ;

int poll_schedule_timeout(struct poll_wqueues *pwq, int state,
     ktime_t *expires, unsigned long slack)
{
 int rc = -EINTR;

 set_current_state(state);
 if (!pwq->triggered)
  rc = schedule_hrtimeout_range(expires, slack, HRTIMER_MODE_ABS);
 __set_current_state(TASK_RUNNING);
 set_mb(pwq->triggered, 0);

 return rc;
}
