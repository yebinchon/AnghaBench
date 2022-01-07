
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_HAS_IN_CHARGE_PARM_P (int ) ;
 scalar_t__ DECL_HAS_VTT_PARM_P (int ) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (int ) ;
 int TREE_CHAIN (int ) ;

tree
skip_artificial_parms_for (tree fn, tree list)
{
  if (DECL_NONSTATIC_MEMBER_FUNCTION_P (fn))
    list = TREE_CHAIN (list);
  else
    return list;

  if (DECL_HAS_IN_CHARGE_PARM_P (fn))
    list = TREE_CHAIN (list);
  if (DECL_HAS_VTT_PARM_P (fn))
    list = TREE_CHAIN (list);
  return list;
}
