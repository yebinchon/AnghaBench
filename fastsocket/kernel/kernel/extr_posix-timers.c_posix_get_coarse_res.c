
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int KTIME_LOW_RES ;
 struct timespec ktime_to_timespec (int ) ;

int posix_get_coarse_res(const clockid_t which_clock, struct timespec *tp)
{
 *tp = ktime_to_timespec(KTIME_LOW_RES);
 return 0;
}
