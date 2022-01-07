
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; int tv_usec; } ;
struct timespec {double tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

double
omp_get_wtime (void)
{
  struct timeval tv;
  gettimeofday (&tv, ((void*)0));
  return tv.tv_sec + tv.tv_usec / 1e6;

}
