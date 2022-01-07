
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int EXC_PTR_EXPR ;
 int build0 (int ,int ) ;
 int ptr_type_node ;

tree
build_exc_ptr (void)
{
  return build0 (EXC_PTR_EXPR, ptr_type_node);
}
