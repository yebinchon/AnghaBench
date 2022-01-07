
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_PRIVATE (int ) ;
 scalar_t__ TREE_PROTECTED (int ) ;
 int access_private_node ;
 int access_protected_node ;
 int access_public_node ;
 int current_access_specifier ;

__attribute__((used)) static void
set_current_access_from_decl (tree decl)
{
  if (TREE_PRIVATE (decl))
    current_access_specifier = access_private_node;
  else if (TREE_PROTECTED (decl))
    current_access_specifier = access_protected_node;
  else
    current_access_specifier = access_public_node;
}
