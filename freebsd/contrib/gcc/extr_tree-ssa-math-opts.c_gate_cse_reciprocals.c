
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_unsafe_math_optimizations ;
 scalar_t__ optimize ;
 int optimize_size ;

__attribute__((used)) static bool
gate_cse_reciprocals (void)
{
  return optimize && !optimize_size && flag_unsafe_math_optimizations;
}
