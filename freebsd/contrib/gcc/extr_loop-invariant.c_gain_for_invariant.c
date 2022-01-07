
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {int dummy; } ;


 int actual_stamp ;
 int get_inv_cost (struct invariant*,int*,unsigned int*) ;
 int global_cost_for_size (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
gain_for_invariant (struct invariant *inv, unsigned *regs_needed,
      unsigned new_regs, unsigned regs_used, unsigned n_inv_uses)
{
  int comp_cost, size_cost;

  get_inv_cost (inv, &comp_cost, regs_needed);
  actual_stamp++;

  size_cost = (global_cost_for_size (new_regs + *regs_needed,
         regs_used, n_inv_uses)
        - global_cost_for_size (new_regs, regs_used, n_inv_uses));

  return comp_cost - size_cost;
}
