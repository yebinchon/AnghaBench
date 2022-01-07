
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int ktime_t ;


 int getnstimeofday (struct timespec*) ;
 int timespec_to_ktime (struct timespec) ;

ktime_t ktime_get_real(void)
{
 struct timespec now;

 getnstimeofday(&now);

 return timespec_to_ktime(now);
}
