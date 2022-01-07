
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static double timeval2double(struct timeval *ts)
{
 return (double)ts->tv_sec +
  (double)ts->tv_usec / (double)1000000;
}
