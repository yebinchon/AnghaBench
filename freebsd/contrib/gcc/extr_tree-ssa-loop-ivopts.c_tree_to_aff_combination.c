
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct affine_tree_combination {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;



 int BITS_PER_UNIT ;





 int STRIP_NOPS (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int aff_combination_add (struct affine_tree_combination*,struct affine_tree_combination*) ;
 int aff_combination_add_elt (struct affine_tree_combination*,int ,int) ;
 int aff_combination_const (struct affine_tree_combination*,int ,int) ;
 int aff_combination_elt (struct affine_tree_combination*,int ,int ) ;
 int aff_combination_scale (struct affine_tree_combination*,int) ;
 int build_fold_addr_expr (int ) ;
 int get_inner_reference (int ,int*,int*,int *,int*,int*,int*,int) ;
 int int_cst_value (int ) ;

__attribute__((used)) static void
tree_to_aff_combination (tree expr, tree type,
    struct affine_tree_combination *comb)
{
  struct affine_tree_combination tmp;
  enum tree_code code;
  tree cst, core, toffset;
  HOST_WIDE_INT bitpos, bitsize;
  enum machine_mode mode;
  int unsignedp, volatilep;

  STRIP_NOPS (expr);

  code = TREE_CODE (expr);
  switch (code)
    {
    case 132:
      aff_combination_const (comb, type, int_cst_value (expr));
      return;

    case 128:
    case 131:
      tree_to_aff_combination (TREE_OPERAND (expr, 0), type, comb);
      tree_to_aff_combination (TREE_OPERAND (expr, 1), type, &tmp);
      if (code == 131)
 aff_combination_scale (&tmp, -1);
      aff_combination_add (comb, &tmp);
      return;

    case 130:
      cst = TREE_OPERAND (expr, 1);
      if (TREE_CODE (cst) != 132)
 break;
      tree_to_aff_combination (TREE_OPERAND (expr, 0), type, comb);
      aff_combination_scale (comb, int_cst_value (cst));
      return;

    case 129:
      tree_to_aff_combination (TREE_OPERAND (expr, 0), type, comb);
      aff_combination_scale (comb, -1);
      return;

    case 133:
      core = get_inner_reference (TREE_OPERAND (expr, 0), &bitsize, &bitpos,
      &toffset, &mode, &unsignedp, &volatilep,
      0);
      if (bitpos % BITS_PER_UNIT != 0)
 break;
      aff_combination_const (comb, type, bitpos / BITS_PER_UNIT);
      core = build_fold_addr_expr (core);
      if (TREE_CODE (core) == 133)
 aff_combination_add_elt (comb, core, 1);
      else
 {
   tree_to_aff_combination (core, type, &tmp);
   aff_combination_add (comb, &tmp);
 }
      if (toffset)
 {
   tree_to_aff_combination (toffset, type, &tmp);
   aff_combination_add (comb, &tmp);
 }
      return;

    default:
      break;
    }

  aff_combination_elt (comb, type, expr);
}
