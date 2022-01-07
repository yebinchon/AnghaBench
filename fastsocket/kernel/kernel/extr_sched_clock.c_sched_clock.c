
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long HZ ;
 scalar_t__ INITIAL_JIFFIES ;
 unsigned long long NSEC_PER_SEC ;
 scalar_t__ jiffies ;

unsigned long long __attribute__((weak)) sched_clock(void)
{
 return (unsigned long long)(jiffies - INITIAL_JIFFIES)
     * (NSEC_PER_SEC / HZ);
}
