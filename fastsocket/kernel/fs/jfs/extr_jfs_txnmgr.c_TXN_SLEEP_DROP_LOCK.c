
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int TXN_UNLOCK () ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int io_schedule () ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int ) ;
 int wait ;

__attribute__((used)) static inline void TXN_SLEEP_DROP_LOCK(wait_queue_head_t * event)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue(event, &wait);
 set_current_state(TASK_UNINTERRUPTIBLE);
 TXN_UNLOCK();
 io_schedule();
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(event, &wait);
}
