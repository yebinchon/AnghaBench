
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int header; } ;
struct ivopts_data {struct loop* current_loop; } ;


 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,int ) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ contains_abnormal_ssa_name_p (scalar_t__) ;
 scalar_t__ determine_biv_step (scalar_t__) ;
 scalar_t__ expand_simple_operations (scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int loop_preheader_edge (struct loop*) ;
 scalar_t__ phi_nodes (int ) ;
 int set_iv (struct ivopts_data*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
find_bivs (struct ivopts_data *data)
{
  tree phi, step, type, base;
  bool found = 0;
  struct loop *loop = data->current_loop;

  for (phi = phi_nodes (loop->header); phi; phi = PHI_CHAIN (phi))
    {
      if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI (PHI_RESULT (phi)))
 continue;

      step = determine_biv_step (phi);
      if (!step)
 continue;

      base = PHI_ARG_DEF_FROM_EDGE (phi, loop_preheader_edge (loop));
      base = expand_simple_operations (base);
      if (contains_abnormal_ssa_name_p (base)
   || contains_abnormal_ssa_name_p (step))
 continue;

      type = TREE_TYPE (PHI_RESULT (phi));
      base = fold_convert (type, base);
      if (step)
 step = fold_convert (type, step);

      set_iv (data, PHI_RESULT (phi), base, step);
      found = 1;
    }

  return found;
}
