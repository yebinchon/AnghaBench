
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int _SC_CLK_TCK ;
 scalar_t__ clock_getres (int ,struct timespec*) ;
 double sysconf (int ) ;

double
omp_get_wtick (void)
{
  return 1.0 / sysconf(_SC_CLK_TCK);

}
