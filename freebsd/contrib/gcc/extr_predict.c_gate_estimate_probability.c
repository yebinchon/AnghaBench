
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_guess_branch_prob ;

__attribute__((used)) static bool
gate_estimate_probability (void)
{
  return flag_guess_branch_prob;
}
