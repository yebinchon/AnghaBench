
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 int pfkey_table_lock ;
 int pfkey_table_users ;
 int pfkey_table_wait ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int wait ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void pfkey_table_grab(void)
{
 write_lock_bh(&pfkey_table_lock);

 if (atomic_read(&pfkey_table_users)) {
  DECLARE_WAITQUEUE(wait, current);

  add_wait_queue_exclusive(&pfkey_table_wait, &wait);
  for(;;) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   if (atomic_read(&pfkey_table_users) == 0)
    break;
   write_unlock_bh(&pfkey_table_lock);
   schedule();
   write_lock_bh(&pfkey_table_lock);
  }

  __set_current_state(TASK_RUNNING);
  remove_wait_queue(&pfkey_table_wait, &wait);
 }
}
