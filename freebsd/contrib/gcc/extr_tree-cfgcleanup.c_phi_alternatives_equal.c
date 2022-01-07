
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_4__ {int dest_idx; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int gcc_assert (int) ;
 int operand_equal_for_phi_arg_p (scalar_t__,scalar_t__) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static bool
phi_alternatives_equal (basic_block dest, edge e1, edge e2)
{
  int n1 = e1->dest_idx;
  int n2 = e2->dest_idx;
  tree phi;

  for (phi = phi_nodes (dest); phi; phi = PHI_CHAIN (phi))
    {
      tree val1 = PHI_ARG_DEF (phi, n1);
      tree val2 = PHI_ARG_DEF (phi, n2);

      gcc_assert (val1 != NULL_TREE);
      gcc_assert (val2 != NULL_TREE);

      if (!operand_equal_for_phi_arg_p (val1, val2))
 return 0;
    }

  return 1;
}
