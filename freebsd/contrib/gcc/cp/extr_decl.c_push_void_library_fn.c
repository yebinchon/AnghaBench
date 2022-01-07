
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_function_type (int ,int ) ;
 int push_library_fn (int ,int ) ;
 int void_type_node ;

tree
push_void_library_fn (tree name, tree parmtypes)
{
  tree type = build_function_type (void_type_node, parmtypes);
  return push_library_fn (name, type);
}
