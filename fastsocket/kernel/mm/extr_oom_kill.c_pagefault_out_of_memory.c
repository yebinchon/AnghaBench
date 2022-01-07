
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_MEMDIE ;
 int clear_system_oom () ;
 int out_of_memory (int *,int ,int ,int *) ;
 int schedule_timeout_uninterruptible (int) ;
 int test_thread_flag (int ) ;
 scalar_t__ try_set_system_oom () ;

void pagefault_out_of_memory(void)
{
 if (try_set_system_oom()) {
  out_of_memory(((void*)0), 0, 0, ((void*)0));
  clear_system_oom();
 }
 if (!test_thread_flag(TIF_MEMDIE))
  schedule_timeout_uninterruptible(1);
}
