
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int get_call_expr_in (int ) ;

__attribute__((used)) static bool
nonpure_call_p (tree stmt)
{
  tree call = get_call_expr_in (stmt);

  if (!call)
    return 0;

  return TREE_SIDE_EFFECTS (call) != 0;
}
