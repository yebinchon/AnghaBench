
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int getnstimeofday (struct timespec*) ;

void do_gettimeofday(struct timeval *tv)
{
 struct timespec now;

 getnstimeofday(&now);
 tv->tv_sec = now.tv_sec;
 tv->tv_usec = now.tv_nsec/1000;
}
