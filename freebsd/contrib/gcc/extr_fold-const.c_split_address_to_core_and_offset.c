
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ADDR_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int build_fold_addr_expr (int ) ;
 int get_inner_reference (int ,scalar_t__*,scalar_t__*,int *,int*,int*,int*,int) ;

__attribute__((used)) static tree
split_address_to_core_and_offset (tree exp,
      HOST_WIDE_INT *pbitpos, tree *poffset)
{
  tree core;
  enum machine_mode mode;
  int unsignedp, volatilep;
  HOST_WIDE_INT bitsize;

  if (TREE_CODE (exp) == ADDR_EXPR)
    {
      core = get_inner_reference (TREE_OPERAND (exp, 0), &bitsize, pbitpos,
      poffset, &mode, &unsignedp, &volatilep,
      0);
      core = build_fold_addr_expr (core);
    }
  else
    {
      core = exp;
      *pbitpos = 0;
      *poffset = NULL_TREE;
    }

  return core;
}
