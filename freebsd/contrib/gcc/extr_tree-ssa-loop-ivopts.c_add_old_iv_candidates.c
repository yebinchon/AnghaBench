
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv_cand {int var_after; int var_before; } ;
struct iv {int ssa_name; int step; int base; } ;


 int IP_ORIGINAL ;
 int PHI_ARG_DEF_FROM_EDGE (int ,int ) ;
 scalar_t__ PHI_NODE ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int add_candidate (struct ivopts_data*,int ,int ,int,int *) ;
 struct iv_cand* add_candidate_1 (struct ivopts_data*,int ,int ,int,int ,int *,int ) ;
 int build_int_cst (int ,int ) ;
 int loop_latch_edge (int ) ;

__attribute__((used)) static void
add_old_iv_candidates (struct ivopts_data *data, struct iv *iv)
{
  tree phi, def;
  struct iv_cand *cand;

  add_candidate (data, iv->base, iv->step, 1, ((void*)0));


  add_candidate (data,
   build_int_cst (TREE_TYPE (iv->base), 0),
   iv->step, 1, ((void*)0));

  phi = SSA_NAME_DEF_STMT (iv->ssa_name);
  if (TREE_CODE (phi) == PHI_NODE)
    {


      def = PHI_ARG_DEF_FROM_EDGE (phi, loop_latch_edge (data->current_loop));
      cand = add_candidate_1 (data,
         iv->base, iv->step, 1, IP_ORIGINAL, ((void*)0),
         SSA_NAME_DEF_STMT (def));
      cand->var_before = iv->ssa_name;
      cand->var_after = def;
    }
}
