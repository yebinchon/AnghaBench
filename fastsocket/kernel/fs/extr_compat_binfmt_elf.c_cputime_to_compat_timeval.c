
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct compat_timeval {int tv_usec; int tv_sec; } ;
typedef int cputime_t ;


 int cputime_to_timeval (int const,struct timeval*) ;

__attribute__((used)) static void cputime_to_compat_timeval(const cputime_t cputime,
          struct compat_timeval *value)
{
 struct timeval tv;
 cputime_to_timeval(cputime, &tv);
 value->tv_sec = tv.tv_sec;
 value->tv_usec = tv.tv_usec;
}
