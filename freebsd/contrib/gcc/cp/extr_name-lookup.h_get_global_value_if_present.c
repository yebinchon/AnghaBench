
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int global_namespace ;
 int * namespace_binding (int *,int ) ;

__attribute__((used)) static inline bool
get_global_value_if_present (tree id, tree *decl)
{
  tree global_value = namespace_binding (id, global_namespace);
  if (global_value)
    *decl = global_value;
  return global_value != ((void*)0);
}
