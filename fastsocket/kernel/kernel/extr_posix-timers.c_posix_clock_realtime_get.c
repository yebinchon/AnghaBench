
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int ktime_get_real_ts (struct timespec*) ;

__attribute__((used)) static int posix_clock_realtime_get(clockid_t which_clock, struct timespec *tp)
{
 ktime_get_real_ts(tp);
 return 0;
}
