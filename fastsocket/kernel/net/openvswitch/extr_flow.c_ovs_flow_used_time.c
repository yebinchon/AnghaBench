
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int MSEC_PER_SEC ;
 int NSEC_PER_MSEC ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int ktime_get_ts (struct timespec*) ;

u64 ovs_flow_used_time(unsigned long flow_jiffies)
{
 struct timespec cur_ts;
 u64 cur_ms, idle_ms;

 ktime_get_ts(&cur_ts);
 idle_ms = jiffies_to_msecs(jiffies - flow_jiffies);
 cur_ms = (u64)cur_ts.tv_sec * MSEC_PER_SEC +
   cur_ts.tv_nsec / NSEC_PER_MSEC;

 return cur_ms - idle_ms;
}
