
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int msecs_to_jiffies (scalar_t__) ;
 int schedule_timeout_uninterruptible (int ) ;

__attribute__((used)) static void pop_wait(u32 pop_time)
{
 if (pop_time)
  schedule_timeout_uninterruptible(msecs_to_jiffies(pop_time));
}
