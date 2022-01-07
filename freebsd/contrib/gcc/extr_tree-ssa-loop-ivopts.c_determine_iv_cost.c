
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv_cand {unsigned int cost; scalar_t__ pos; int var_before; TYPE_1__* iv; } ;
struct TYPE_2__ {int base; } ;


 unsigned int AVG_LOOP_NITER (int ) ;
 int DECL_ARTIFICIAL (int ) ;
 scalar_t__ IP_END ;
 scalar_t__ IP_ORIGINAL ;
 int SSA_NAME_VAR (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 unsigned int add_cost (int ) ;
 int current_loop ;
 scalar_t__ empty_block_p (int ) ;
 unsigned int force_var_cost (struct ivopts_data*,int ,int *) ;
 int ip_end_pos (int ) ;

__attribute__((used)) static void
determine_iv_cost (struct ivopts_data *data, struct iv_cand *cand)
{
  unsigned cost_base, cost_step;
  tree base;

  if (!cand->iv)
    {
      cand->cost = 0;
      return;
    }





  base = cand->iv->base;
  cost_base = force_var_cost (data, base, ((void*)0));
  cost_step = add_cost (TYPE_MODE (TREE_TYPE (base)));

  cand->cost = cost_step + cost_base / AVG_LOOP_NITER (current_loop);




  if (cand->pos == IP_ORIGINAL
      && !DECL_ARTIFICIAL (SSA_NAME_VAR (cand->var_before)))
    cand->cost--;



  if (cand->pos == IP_END
      && empty_block_p (ip_end_pos (data->current_loop)))
    cand->cost++;
}
