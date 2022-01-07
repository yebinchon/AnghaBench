
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_loops ;
 int move_loop_invariants (scalar_t__) ;

__attribute__((used)) static unsigned int
rtl_move_loop_invariants (void)
{
  if (current_loops)
    move_loop_invariants (current_loops);
  return 0;
}
