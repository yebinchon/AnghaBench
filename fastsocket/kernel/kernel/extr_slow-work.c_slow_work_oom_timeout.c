
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slow_work_may_not_start_new_thread ;

__attribute__((used)) static void slow_work_oom_timeout(unsigned long data)
{
 slow_work_may_not_start_new_thread = 0;
}
