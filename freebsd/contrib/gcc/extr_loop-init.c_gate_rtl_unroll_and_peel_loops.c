
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_peel_loops ;
 scalar_t__ flag_unroll_all_loops ;
 scalar_t__ flag_unroll_loops ;

__attribute__((used)) static bool
gate_rtl_unroll_and_peel_loops (void)
{
  return (flag_peel_loops || flag_unroll_loops || flag_unroll_all_loops);
}
