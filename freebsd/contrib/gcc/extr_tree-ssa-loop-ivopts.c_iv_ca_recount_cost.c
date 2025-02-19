
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_ca {unsigned int cost; int n_regs; scalar_t__ cand_cost; scalar_t__ cand_use_cost; } ;


 scalar_t__ ivopts_global_cost_for_size (struct ivopts_data*,int ) ;

__attribute__((used)) static void
iv_ca_recount_cost (struct ivopts_data *data, struct iv_ca *ivs)
{
  unsigned cost = 0;

  cost += ivs->cand_use_cost;
  cost += ivs->cand_cost;
  cost += ivopts_global_cost_for_size (data, ivs->n_regs);

  ivs->cost = cost;
}
