
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ t_bool ;
struct loop {int dummy; } ;


 int PHI_NUM_ARGS (int ) ;
 int chrec_dont_know ;
 int chrec_merge (int ,int ) ;
 scalar_t__ follow_ssa_edge_in_condition_phi_branch (int,struct loop*,int ,int ,int *,int ,int) ;
 scalar_t__ t_dont_know ;
 scalar_t__ t_false ;
 scalar_t__ t_true ;

__attribute__((used)) static t_bool
follow_ssa_edge_in_condition_phi (struct loop *loop,
      tree condition_phi,
      tree halting_phi,
      tree *evolution_of_loop, int limit)
{
  int i;
  tree init = *evolution_of_loop;
  tree evolution_of_branch;
  t_bool res = follow_ssa_edge_in_condition_phi_branch (0, loop, condition_phi,
       halting_phi,
       &evolution_of_branch,
       init, limit);
  if (res == t_false || res == t_dont_know)
    return res;

  *evolution_of_loop = evolution_of_branch;

  for (i = 1; i < PHI_NUM_ARGS (condition_phi); i++)
    {


      if (*evolution_of_loop == chrec_dont_know)
 return t_true;

      res = follow_ssa_edge_in_condition_phi_branch (i, loop, condition_phi,
           halting_phi,
           &evolution_of_branch,
           init, limit);
      if (res == t_false || res == t_dont_know)
 return res;

      *evolution_of_loop = chrec_merge (*evolution_of_loop,
     evolution_of_branch);
    }

  return t_true;
}
