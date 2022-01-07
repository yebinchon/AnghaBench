
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_timeout_uninterruptible (long) ;

__attribute__((used)) static inline void delay(long ticks)
{
 schedule_timeout_uninterruptible(ticks);
}
