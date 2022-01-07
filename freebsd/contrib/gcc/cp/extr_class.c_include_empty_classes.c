
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* record_layout_info ;
struct TYPE_5__ {int bitpos; int t; } ;


 int BITS_PER_UNIT ;
 scalar_t__ CLASSTYPE_AS_BASE (int ) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INT_CST_LT_UNSIGNED (int ,int ) ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int abi_version_at_least (int) ;
 int bitsize_int (int ) ;
 int bitsizetype ;
 int convert (int ,int ) ;
 int end_of_class (int ,int) ;
 int gcc_assert (int ) ;
 int normalize_rli (TYPE_1__*) ;
 int rli_size_unit_so_far (TYPE_1__*) ;
 int round_down (int ,int ) ;
 int size_binop (int ,int ,int ) ;
 int tree_int_cst_equal (int ,int ) ;

__attribute__((used)) static void
include_empty_classes (record_layout_info rli)
{
  tree eoc;
  tree rli_size;






  eoc = end_of_class (rli->t,
        CLASSTYPE_AS_BASE (rli->t) != NULL_TREE);
  rli_size = rli_size_unit_so_far (rli);
  if (TREE_CODE (rli_size) == INTEGER_CST
      && INT_CST_LT_UNSIGNED (rli_size, eoc))
    {
      if (!abi_version_at_least (2))





 rli->bitpos = round_down (rli->bitpos, BITS_PER_UNIT);
      else

 gcc_assert (tree_int_cst_equal
      (rli->bitpos, round_down (rli->bitpos, BITS_PER_UNIT)));
      rli->bitpos
 = size_binop (PLUS_EXPR,
        rli->bitpos,
        size_binop (MULT_EXPR,
      convert (bitsizetype,
        size_binop (MINUS_EXPR,
             eoc, rli_size)),
      bitsize_int (BITS_PER_UNIT)));
      normalize_rli (rli);
    }
}
