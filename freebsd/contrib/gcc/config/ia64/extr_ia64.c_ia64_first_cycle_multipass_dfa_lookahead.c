
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ reload_completed ;

__attribute__((used)) static int
ia64_first_cycle_multipass_dfa_lookahead (void)
{
  return (reload_completed ? 6 : 4);
}
