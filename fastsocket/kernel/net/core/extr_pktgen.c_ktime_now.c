
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int ktime_t ;


 int ktime_get_ts (struct timespec*) ;
 int timespec_to_ktime (struct timespec) ;

__attribute__((used)) static inline ktime_t ktime_now(void)
{
 struct timespec ts;
 ktime_get_ts(&ts);

 return timespec_to_ktime(ts);
}
