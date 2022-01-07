
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int ktime_t ;


 int get_monotonic_boottime (struct timespec*) ;
 int timespec_to_ktime (struct timespec) ;

ktime_t ktime_get_boottime(void)
{
 struct timespec ts;

 get_monotonic_boottime(&ts);
 return timespec_to_ktime(ts);
}
