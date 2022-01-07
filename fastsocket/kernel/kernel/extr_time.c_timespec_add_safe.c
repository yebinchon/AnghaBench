
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 scalar_t__ TIME_T_MAX ;
 int set_normalized_timespec (struct timespec*,scalar_t__,scalar_t__) ;

struct timespec timespec_add_safe(const struct timespec lhs,
      const struct timespec rhs)
{
 struct timespec res;

 set_normalized_timespec(&res, lhs.tv_sec + rhs.tv_sec,
    lhs.tv_nsec + rhs.tv_nsec);

 if (res.tv_sec < lhs.tv_sec || res.tv_sec < rhs.tv_sec)
  res.tv_sec = TIME_T_MAX;

 return res;
}
