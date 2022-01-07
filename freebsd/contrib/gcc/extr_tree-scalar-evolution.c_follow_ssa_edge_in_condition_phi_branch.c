
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int t_bool ;
struct loop {int dummy; } ;


 int PHI_ARG_DEF (int ,int) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ backedge_phi_arg_p (int ,int) ;
 int chrec_dont_know ;
 int follow_ssa_edge (struct loop*,int ,int ,int *,int) ;
 int t_false ;

__attribute__((used)) static inline t_bool
follow_ssa_edge_in_condition_phi_branch (int i,
      struct loop *loop,
      tree condition_phi,
      tree halting_phi,
      tree *evolution_of_branch,
      tree init_cond, int limit)
{
  tree branch = PHI_ARG_DEF (condition_phi, i);
  *evolution_of_branch = chrec_dont_know;



  if (backedge_phi_arg_p (condition_phi, i))
    return t_false;

  if (TREE_CODE (branch) == SSA_NAME)
    {
      *evolution_of_branch = init_cond;
      return follow_ssa_edge (loop, SSA_NAME_DEF_STMT (branch), halting_phi,
         evolution_of_branch, limit);
    }
  return t_false;
}
