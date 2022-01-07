
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {int dummy; } ;
typedef int htab_t ;


 scalar_t__ VEC_iterate (int ,int ,unsigned int,struct invariant*) ;
 int VEC_length (int ,int ) ;
 int eq_invariant_expr ;
 int find_identical_invariants (int ,struct invariant*) ;
 int free ;
 int hash_invariant_expr ;
 int htab_create (int ,int ,int ,int ) ;
 int htab_delete (int ) ;
 int invariant_p ;
 int invariants ;

__attribute__((used)) static void
merge_identical_invariants (void)
{
  unsigned i;
  struct invariant *inv;
  htab_t eq = htab_create (VEC_length (invariant_p, invariants),
      hash_invariant_expr, eq_invariant_expr, free);

  for (i = 0; VEC_iterate (invariant_p, invariants, i, inv); i++)
    find_identical_invariants (eq, inv);

  htab_delete (eq);
}
