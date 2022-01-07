
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TREE_READONLY (scalar_t__) ;
 int TREE_THIS_VOLATILE (scalar_t__) ;
 scalar_t__ current_function_decl ;

tree
decl_constant_value (tree decl)
{
  if (


      current_function_decl != 0
      && TREE_CODE (decl) != PARM_DECL
      && !TREE_THIS_VOLATILE (decl)
      && TREE_READONLY (decl)
      && DECL_INITIAL (decl) != 0
      && TREE_CODE (DECL_INITIAL (decl)) != ERROR_MARK



      && TREE_CONSTANT (DECL_INITIAL (decl))

      && TREE_CODE (DECL_INITIAL (decl)) != CONSTRUCTOR)
    return DECL_INITIAL (decl);
  return decl;
}
