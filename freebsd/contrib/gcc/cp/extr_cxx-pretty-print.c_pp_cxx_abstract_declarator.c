
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int pp_cxx_direct_abstract_declarator (int *,int ) ;
 int pp_cxx_right_paren (int *) ;

__attribute__((used)) static void
pp_cxx_abstract_declarator (cxx_pretty_printer *pp, tree t)
{
  if (TYPE_PTRMEM_P (t) || TYPE_PTRMEMFUNC_P (t))
    pp_cxx_right_paren (pp);
  else if (POINTER_TYPE_P (t))
    {
      if (TREE_CODE (TREE_TYPE (t)) == ARRAY_TYPE
   || TREE_CODE (TREE_TYPE (t)) == FUNCTION_TYPE)
 pp_cxx_right_paren (pp);
      t = TREE_TYPE (t);
    }
  pp_cxx_direct_abstract_declarator (pp, t);
}
