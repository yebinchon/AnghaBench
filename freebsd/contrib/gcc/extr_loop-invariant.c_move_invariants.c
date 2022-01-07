
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int dummy; } ;
struct invariant {int dummy; } ;


 scalar_t__ VEC_iterate (int ,int ,unsigned int,struct invariant*) ;
 int invariant_p ;
 int invariants ;
 int move_invariant_reg (struct loop*,unsigned int) ;

__attribute__((used)) static void
move_invariants (struct loop *loop)
{
  struct invariant *inv;
  unsigned i;

  for (i = 0; VEC_iterate (invariant_p, invariants, i, inv); i++)
    move_invariant_reg (loop, i);
}
