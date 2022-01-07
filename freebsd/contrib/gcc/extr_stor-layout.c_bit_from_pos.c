
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MULT_EXPR ;
 int PLUS_EXPR ;
 int bitsize_unit_node ;
 int bitsizetype ;
 int fold_convert (int ,int ) ;
 int size_binop (int ,int ,int ) ;

tree
bit_from_pos (tree offset, tree bitpos)
{
  return size_binop (PLUS_EXPR, bitpos,
       size_binop (MULT_EXPR,
     fold_convert (bitsizetype, offset),
     bitsize_unit_node));
}
