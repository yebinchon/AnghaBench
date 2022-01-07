
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct invariant {int invno; TYPE_1__* def; } ;
struct TYPE_2__ {scalar_t__ n_uses; } ;


 int DF_REGNO_FIRST_DEF (int ,unsigned int) ;
 scalar_t__ DF_REGNO_LAST_USE (int ,unsigned int) ;
 unsigned int DF_REG_SIZE (int ) ;
 scalar_t__ VEC_iterate (int ,int ,unsigned int,struct invariant*) ;
 int VEC_length (int ,int ) ;
 scalar_t__ best_gain_for_invariant (struct invariant**,unsigned int*,unsigned int,unsigned int,unsigned int) ;
 int df ;
 int invariant_p ;
 int invariants ;
 int set_move_mark (int ) ;

__attribute__((used)) static void
find_invariants_to_move (void)
{
  unsigned i, regs_used, n_inv_uses, regs_needed = 0, new_regs;
  struct invariant *inv = ((void*)0);
  unsigned int n_regs = DF_REG_SIZE (df);

  if (!VEC_length (invariant_p, invariants))
    return;



  n_inv_uses = 0;



  regs_used = 2;

  for (i = 0; i < n_regs; i++)
    {
      if (!DF_REGNO_FIRST_DEF (df, i) && DF_REGNO_LAST_USE (df, i))
 {

   regs_used++;
 }
    }

  for (i = 0; VEC_iterate (invariant_p, invariants, i, inv); i++)
    {
      if (inv->def)
 n_inv_uses += inv->def->n_uses;
    }

  new_regs = 0;
  while (best_gain_for_invariant (&inv, &regs_needed,
      new_regs, regs_used, n_inv_uses) > 0)
    {
      set_move_mark (inv->invno);
      new_regs += regs_needed;
    }
}
