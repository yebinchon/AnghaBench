
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int PLUS_EXPR ;
 int TRUNC_DIV_EXPR ;
 int bitsize_unit_node ;
 int fold_convert (int ,int ) ;
 int size_binop (int ,int ,int ) ;
 int sizetype ;

tree
byte_from_pos (tree offset, tree bitpos)
{
  return size_binop (PLUS_EXPR, offset,
       fold_convert (sizetype,
       size_binop (TRUNC_DIV_EXPR, bitpos,
            bitsize_unit_node)));
}
