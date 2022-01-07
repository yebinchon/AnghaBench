
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slow_work_cull ;
 int slow_work_thread_wq ;
 int wake_up (int *) ;

__attribute__((used)) static void slow_work_cull_timeout(unsigned long data)
{
 slow_work_cull = 1;
 wake_up(&slow_work_thread_wq);
}
