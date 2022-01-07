
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct timeval {unsigned long long tv_sec; unsigned long long tv_usec; } ;


 int abort () ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

uint64_t
get_ticks(void)
{
 struct timeval tv;
 uint64_t ret;

 if (gettimeofday(&tv, ((void*)0)))
  abort();
 ret = tv.tv_sec * 100ULL + tv.tv_usec / 10000ULL;
 return (ret);
}
