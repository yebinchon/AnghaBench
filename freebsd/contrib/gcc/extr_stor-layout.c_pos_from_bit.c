
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int BITS_PER_UNIT ;
 int FLOOR_DIV_EXPR ;
 int FLOOR_MOD_EXPR ;
 int MULT_EXPR ;
 int bitsize_int (unsigned int) ;
 int fold_convert (int ,int ) ;
 int size_binop (int ,int ,int ) ;
 int size_int (unsigned int) ;
 int sizetype ;

void
pos_from_bit (tree *poffset, tree *pbitpos, unsigned int off_align,
       tree pos)
{
  *poffset = size_binop (MULT_EXPR,
    fold_convert (sizetype,
           size_binop (FLOOR_DIV_EXPR, pos,
         bitsize_int (off_align))),
    size_int (off_align / BITS_PER_UNIT));
  *pbitpos = size_binop (FLOOR_MOD_EXPR, pos, bitsize_int (off_align));
}
