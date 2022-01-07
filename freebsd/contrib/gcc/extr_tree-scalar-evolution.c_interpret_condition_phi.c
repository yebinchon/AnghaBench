
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;


 int PHI_ARG_DEF (int ,int) ;
 int PHI_NUM_ARGS (int ) ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 scalar_t__ backedge_phi_arg_p (int ,int) ;
 int chrec_dont_know ;
 int chrec_merge (int ,int ) ;
 int chrec_not_analyzed_yet ;

__attribute__((used)) static tree
interpret_condition_phi (struct loop *loop, tree condition_phi)
{
  int i;
  tree res = chrec_not_analyzed_yet;

  for (i = 0; i < PHI_NUM_ARGS (condition_phi); i++)
    {
      tree branch_chrec;

      if (backedge_phi_arg_p (condition_phi, i))
 {
   res = chrec_dont_know;
   break;
 }

      branch_chrec = analyze_scalar_evolution
 (loop, PHI_ARG_DEF (condition_phi, i));

      res = chrec_merge (res, branch_chrec);
    }

  return res;
}
