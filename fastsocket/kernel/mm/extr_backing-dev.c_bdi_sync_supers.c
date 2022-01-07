
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_user_nice (int ,int ) ;
 int sync_supers () ;

__attribute__((used)) static int bdi_sync_supers(void *unused)
{
 set_user_nice(current, 0);

 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();




  sync_supers();
 }

 return 0;
}
