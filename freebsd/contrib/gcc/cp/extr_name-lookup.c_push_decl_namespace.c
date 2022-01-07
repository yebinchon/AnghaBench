
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ NAMESPACE_DECL ;
 int NULL_TREE ;
 int ORIGINAL_NAMESPACE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int decl_namespace_context (int ) ;
 int decl_namespace_list ;
 int tree_cons (int ,int ,int ) ;

void
push_decl_namespace (tree decl)
{
  if (TREE_CODE (decl) != NAMESPACE_DECL)
    decl = decl_namespace_context (decl);
  decl_namespace_list = tree_cons (ORIGINAL_NAMESPACE (decl),
       NULL_TREE, decl_namespace_list);
}
