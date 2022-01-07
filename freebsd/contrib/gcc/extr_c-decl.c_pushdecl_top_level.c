
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONST_DECL ;
 int DECL_NAME (int ) ;
 int I_SYMBOL_BINDING (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ VAR_DECL ;
 int bind (int ,int ,scalar_t__,int,int) ;
 scalar_t__ external_scope ;
 scalar_t__ file_scope ;
 int gcc_assert (int) ;

tree
pushdecl_top_level (tree x)
{
  tree name;
  bool nested = 0;
  gcc_assert (TREE_CODE (x) == VAR_DECL || TREE_CODE (x) == CONST_DECL);

  name = DECL_NAME (x);

 gcc_assert (TREE_CODE (x) == CONST_DECL || !I_SYMBOL_BINDING (name));

  if (TREE_PUBLIC (x))
    {
      bind (name, x, external_scope, 1, 0);
      nested = 1;
    }
  if (file_scope)
    bind (name, x, file_scope, 0, nested);

  return x;
}
