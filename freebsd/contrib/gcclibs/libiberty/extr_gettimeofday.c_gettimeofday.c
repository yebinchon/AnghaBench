
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int abort () ;
 scalar_t__ time (int *) ;

int
gettimeofday (struct timeval *tp, void *tz)
{
  if (tz)
    abort ();
  tp->tv_usec = 0;
  if (time (&tp->tv_sec) == (time_t) -1)
    return -1;
  return 0;
}
