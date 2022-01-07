
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {scalar_t__ eqto; scalar_t__ invno; scalar_t__ move; } ;


 scalar_t__ VEC_iterate (int ,int ,unsigned int,struct invariant*) ;
 int gain_for_invariant (struct invariant*,unsigned int*,unsigned int,unsigned int,unsigned int) ;
 int invariant_p ;
 int invariants ;

__attribute__((used)) static int
best_gain_for_invariant (struct invariant **best, unsigned *regs_needed,
    unsigned new_regs, unsigned regs_used,
    unsigned n_inv_uses)
{
  struct invariant *inv;
  int gain = 0, again;
  unsigned aregs_needed, invno;

  for (invno = 0; VEC_iterate (invariant_p, invariants, invno, inv); invno++)
    {
      if (inv->move)
 continue;


      if (inv->eqto != inv->invno)
 continue;

      again = gain_for_invariant (inv, &aregs_needed,
      new_regs, regs_used, n_inv_uses);
      if (again > gain)
 {
   gain = again;
   *best = inv;
   *regs_needed = aregs_needed;
 }
    }

  return gain;
}
