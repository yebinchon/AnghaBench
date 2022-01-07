
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TREE_CHAIN (int ) ;
 int decl_namespace_list ;

void
pop_decl_namespace (void)
{
  decl_namespace_list = TREE_CHAIN (decl_namespace_list);
}
