
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_optimize_sibling_calls ;

__attribute__((used)) static bool
gate_tail_calls (void)
{
  return flag_optimize_sibling_calls != 0;
}
