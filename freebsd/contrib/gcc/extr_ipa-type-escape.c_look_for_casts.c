
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BIT_FIELD_REF ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VIEW_CONVERT_EXPR ;
 int check_cast (int ,scalar_t__) ;
 scalar_t__ get_base_address (scalar_t__) ;
 int get_canon_type (int ,int,int) ;
 scalar_t__ is_gimple_cast (scalar_t__) ;

__attribute__((used)) static void
look_for_casts (tree lhs __attribute__((unused)), tree t)
{
  if (is_gimple_cast (t) || TREE_CODE (t) == VIEW_CONVERT_EXPR)
    {
      tree castfromvar = TREE_OPERAND (t, 0);
      check_cast (TREE_TYPE (t), castfromvar);
    }
  else if (TREE_CODE (t) == COMPONENT_REF
    || TREE_CODE (t) == INDIRECT_REF
    || TREE_CODE (t) == BIT_FIELD_REF)
    {
      tree base = get_base_address (t);
      while (t != base)
 {
   t = TREE_OPERAND (t, 0);
   if (TREE_CODE (t) == VIEW_CONVERT_EXPR)
     {



       tree castfromref = TREE_OPERAND (t, 0);
       check_cast (TREE_TYPE (t), castfromref);
     }
   else if (TREE_CODE (t) == COMPONENT_REF)
     get_canon_type (TREE_TYPE (TREE_OPERAND (t, 1)), 0, 0);
 }
    }
}
