
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int PLUS_EXPR ;
 int array_type_nelts (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int integer_one_node ;
 int sizetype ;

tree
array_type_nelts_top (tree type)
{
  return fold_build2 (PLUS_EXPR, sizetype,
        array_type_nelts (type),
        integer_one_node);
}
