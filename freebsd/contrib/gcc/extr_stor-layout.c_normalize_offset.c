
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int BITS_PER_UNIT ;
 int FLOOR_DIV_EXPR ;
 int FLOOR_MOD_EXPR ;
 int MULT_EXPR ;
 int PLUS_EXPR ;
 int bitsize_int (unsigned int) ;
 scalar_t__ compare_tree_int (int ,unsigned int) ;
 int fold_convert (int ,int ) ;
 int size_binop (int ,int ,int ) ;
 int size_int (unsigned int) ;
 int sizetype ;

void
normalize_offset (tree *poffset, tree *pbitpos, unsigned int off_align)
{


  if (compare_tree_int (*pbitpos, off_align) >= 0)
    {
      tree extra_aligns = size_binop (FLOOR_DIV_EXPR, *pbitpos,
          bitsize_int (off_align));

      *poffset
 = size_binop (PLUS_EXPR, *poffset,
        size_binop (MULT_EXPR,
      fold_convert (sizetype, extra_aligns),
      size_int (off_align / BITS_PER_UNIT)));

      *pbitpos
 = size_binop (FLOOR_MOD_EXPR, *pbitpos, bitsize_int (off_align));
    }
}
