
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static void o2hb_tv_subtract(struct timeval *a,
        struct timeval *b)
{

 if (a->tv_sec < b->tv_sec ||
     (a->tv_sec == b->tv_sec && a->tv_usec < b->tv_usec)) {
  a->tv_sec = 0;
  a->tv_usec = 0;
  return;
 }

 a->tv_sec -= b->tv_sec;
 a->tv_usec -= b->tv_usec;
 while ( a->tv_usec < 0 ) {
  a->tv_sec--;
  a->tv_usec += 1000000;
 }
}
