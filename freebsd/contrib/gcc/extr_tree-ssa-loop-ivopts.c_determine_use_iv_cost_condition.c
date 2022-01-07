
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct ivopts_data {int dummy; } ;
struct iv_use {int ** op_p; } ;
struct iv_cand {int iv; } ;
typedef int * bitmap ;
struct TYPE_2__ {int * base; int step; } ;


 unsigned int INFTY ;
 int * NULL_TREE ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 struct ivopts_data* fd_ivopts_data ;
 int find_depends ;
 unsigned int force_var_cost (struct ivopts_data*,int *,int **) ;
 unsigned int get_computation_cost (struct ivopts_data*,struct iv_use*,struct iv_cand*,int,int **) ;
 TYPE_1__* get_iv (struct ivopts_data*,int *) ;
 scalar_t__ may_eliminate_iv (struct ivopts_data*,struct iv_use*,struct iv_cand*,int **) ;
 int set_use_iv_cost (struct ivopts_data*,struct iv_use*,struct iv_cand*,unsigned int,int *,int *) ;
 int walk_tree (int **,int ,int **,int *) ;
 int zero_p (int ) ;

__attribute__((used)) static bool
determine_use_iv_cost_condition (struct ivopts_data *data,
     struct iv_use *use, struct iv_cand *cand)
{
  tree bound = NULL_TREE, op, cond;
  bitmap depends_on = ((void*)0);
  unsigned cost;


  if (!cand->iv)
    {
      set_use_iv_cost (data, use, cand, INFTY, ((void*)0), NULL_TREE);
      return 0;
    }

  if (may_eliminate_iv (data, use, cand, &bound))
    {
      cost = force_var_cost (data, bound, &depends_on);

      set_use_iv_cost (data, use, cand, cost, depends_on, bound);
      return cost != INFTY;
    }




  cost = get_computation_cost (data, use, cand, 0, &depends_on);

  cond = *use->op_p;
  if (TREE_CODE (cond) != SSA_NAME)
    {
      op = TREE_OPERAND (cond, 0);
      if (TREE_CODE (op) == SSA_NAME && !zero_p (get_iv (data, op)->step))
 op = TREE_OPERAND (cond, 1);
      if (TREE_CODE (op) == SSA_NAME)
 {
   op = get_iv (data, op)->base;
   fd_ivopts_data = data;
   walk_tree (&op, find_depends, &depends_on, ((void*)0));
 }
    }

  set_use_iv_cost (data, use, cand, cost, depends_on, ((void*)0));
  return cost != INFTY;
}
