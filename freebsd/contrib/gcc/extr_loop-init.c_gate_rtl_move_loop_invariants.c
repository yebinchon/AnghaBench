
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_move_loop_invariants ;

__attribute__((used)) static bool
gate_rtl_move_loop_invariants (void)
{
  return flag_move_loop_invariants;
}
