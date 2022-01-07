
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_cx_limited_range ;
 int flag_errno_math ;
 int flag_finite_math_only ;
 scalar_t__ flag_rounding_math ;
 scalar_t__ flag_signaling_nans ;
 int flag_trapping_math ;
 int flag_unsafe_math_optimizations ;

void
set_fast_math_flags (int set)
{
  flag_trapping_math = !set;
  flag_unsafe_math_optimizations = set;
  flag_finite_math_only = set;
  flag_errno_math = !set;
  if (set)
    {
      flag_signaling_nans = 0;
      flag_rounding_math = 0;
      flag_cx_limited_range = 1;
    }
}
