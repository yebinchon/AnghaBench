
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int dummy; } ;


 int find_invariants (struct loop*) ;
 int find_invariants_to_move () ;
 int free_inv_motion_data () ;
 int init_inv_motion_data () ;
 int move_invariants (struct loop*) ;

__attribute__((used)) static void
move_single_loop_invariants (struct loop *loop)
{
  init_inv_motion_data ();

  find_invariants (loop);
  find_invariants_to_move ();
  move_invariants (loop);

  free_inv_motion_data ();
}
