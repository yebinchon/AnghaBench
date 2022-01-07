
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;
 int PHI_NUM_ARGS (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int operand_equal_p (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static tree
degenerate_phi_result (tree phi)
{
  tree lhs = PHI_RESULT (phi);
  tree val = ((void*)0);
  int i;




  for (i = 0; i < PHI_NUM_ARGS (phi); i++)
    {
      tree arg = PHI_ARG_DEF (phi, i);

      if (arg == lhs)
 continue;
      else if (!val)
 val = arg;
      else if (!operand_equal_p (arg, val, 0))
 break;
    }
  return (i == PHI_NUM_ARGS (phi) ? val : ((void*)0));
}
