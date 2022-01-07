
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int do_posix_clock_monotonic_gettime (struct timespec*) ;

__attribute__((used)) static inline void delayacct_start(struct timespec *start)
{
 do_posix_clock_monotonic_gettime(start);
}
