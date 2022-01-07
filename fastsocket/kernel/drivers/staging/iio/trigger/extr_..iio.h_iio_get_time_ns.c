
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int s64 ;


 int ktime_get_real_ts (struct timespec*) ;
 int timespec_to_ns (struct timespec*) ;

__attribute__((used)) static inline s64 iio_get_time_ns(void)
{
 struct timespec ts;




 ktime_get_real_ts(&ts);

 return timespec_to_ns(&ts);
}
