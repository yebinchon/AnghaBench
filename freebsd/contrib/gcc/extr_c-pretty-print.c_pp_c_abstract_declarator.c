
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int pp_c_right_paren (int *) ;
 int pp_direct_abstract_declarator (int *,int ) ;

__attribute__((used)) static void
pp_c_abstract_declarator (c_pretty_printer *pp, tree t)
{

  if (TREE_CODE (t) == POINTER_TYPE ||
      TREE_CODE (t) == BLOCK_POINTER_TYPE)

    {
      if (TREE_CODE (TREE_TYPE (t)) == ARRAY_TYPE
   || TREE_CODE (TREE_TYPE (t)) == FUNCTION_TYPE)
 pp_c_right_paren (pp);
      t = TREE_TYPE (t);
    }

  pp_direct_abstract_declarator (pp, t);
}
