
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ audit_backlog_limit ;
 int audit_backlog_wait ;
 int audit_skb_queue ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int wait ;

__attribute__((used)) static void wait_for_auditd(unsigned long sleep_time)
{
 DECLARE_WAITQUEUE(wait, current);
 set_current_state(TASK_UNINTERRUPTIBLE);
 add_wait_queue(&audit_backlog_wait, &wait);

 if (audit_backlog_limit &&
     skb_queue_len(&audit_skb_queue) > audit_backlog_limit)
  schedule_timeout(sleep_time);

 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&audit_backlog_wait, &wait);
}
