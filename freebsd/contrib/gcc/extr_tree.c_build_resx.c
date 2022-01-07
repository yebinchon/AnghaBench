
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int RESX_EXPR ;
 int build1 (int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int void_type_node ;

tree
build_resx (int region_number)
{
  tree t;
  t = build1 (RESX_EXPR, void_type_node,
       build_int_cst (NULL_TREE, region_number));
  return t;
}
