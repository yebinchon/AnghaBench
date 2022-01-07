
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int trace_foo_bar (char*,int) ;

__attribute__((used)) static void simple_thread_func(int cnt)
{
 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ);
 trace_foo_bar("hello", cnt);
}
