
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NOP_EXPR ;
 int build1 (int ,int ,int ) ;
 int build_indirect_ref (int ,int *) ;
 int build_pointer_type (int ) ;
 int void_zero_node ;

tree
build_dummy_object (tree type)
{
  tree decl = build1 (NOP_EXPR, build_pointer_type (type), void_zero_node);
  return build_indirect_ref (decl, ((void*)0));
}
