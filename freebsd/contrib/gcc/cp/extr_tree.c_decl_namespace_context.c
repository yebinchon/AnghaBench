
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CP_DECL_CONTEXT (int ) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_MAIN_DECL (int ) ;
 scalar_t__ TYPE_P (int ) ;

tree
decl_namespace_context (tree decl)
{
  while (1)
    {
      if (TREE_CODE (decl) == NAMESPACE_DECL)
 return decl;
      else if (TYPE_P (decl))
 decl = CP_DECL_CONTEXT (TYPE_MAIN_DECL (decl));
      else
 decl = CP_DECL_CONTEXT (decl);
    }
}
