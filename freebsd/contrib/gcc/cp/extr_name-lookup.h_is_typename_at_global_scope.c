
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 int global_namespace ;
 scalar_t__ namespace_binding (scalar_t__,int ) ;

__attribute__((used)) static inline bool
is_typename_at_global_scope (tree id)
{
  tree global_value = namespace_binding (id, global_namespace);

  return global_value && TREE_CODE (global_value) == TYPE_DECL;
}
