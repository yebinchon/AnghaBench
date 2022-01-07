
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct real_format {int signbit_ro; scalar_t__ has_signed_zero; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_WORD ;
 int BLKmode ;
 int EXPAND_NORMAL ;
 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ HONOR_SIGNED_ZEROS (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int LT_EXPR ;
 int NULL_RTX ;
 int NULL_TREE ;
 int OPTAB_LIB_WIDEN ;
 struct real_format* REAL_MODE_FORMAT (int) ;
 int REAL_TYPE ;
 int RSHIFT_EXPR ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 scalar_t__ UNITS_PER_WORD ;
 int VOID_TYPE ;
 int VOIDmode ;
 int and_optab ;
 int build_int_cst (int ,int) ;
 int build_real (int ,int ) ;
 int const1_rtx ;
 int dconst0 ;
 int expand_binop (int,int ,int ,int ,int ,int,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int expand_normal (int ) ;
 int expand_shift (int ,int,int ,int ,int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int force_reg (int,int ) ;
 int gen_lowpart (int,int ) ;
 int immed_double_const (int,int,int) ;
 int int_mode_for_mode (int) ;
 int operand_subword_force (int ,int,int) ;
 int validate_arglist (int ,int ,int ) ;
 int word_mode ;

__attribute__((used)) static rtx
expand_builtin_signbit (tree exp, rtx target)
{
  const struct real_format *fmt;
  enum machine_mode fmode, imode, rmode;
  HOST_WIDE_INT hi, lo;
  tree arg, arglist;
  int word, bitpos;
  rtx temp;

  arglist = TREE_OPERAND (exp, 1);
  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  fmode = TYPE_MODE (TREE_TYPE (arg));
  rmode = TYPE_MODE (TREE_TYPE (exp));
  fmt = REAL_MODE_FORMAT (fmode);



  bitpos = fmt->signbit_ro;
  if (bitpos < 0)
  {

    if (fmt->has_signed_zero && HONOR_SIGNED_ZEROS (fmode))
      return 0;

    arg = fold_build2 (LT_EXPR, TREE_TYPE (exp), arg,
         build_real (TREE_TYPE (arg), dconst0));
    return expand_expr (arg, target, VOIDmode, EXPAND_NORMAL);
  }

  temp = expand_normal (arg);
  if (GET_MODE_SIZE (fmode) <= UNITS_PER_WORD)
    {
      imode = int_mode_for_mode (fmode);
      if (imode == BLKmode)
 return 0;
      temp = gen_lowpart (imode, temp);
    }
  else
    {
      imode = word_mode;

      if (FLOAT_WORDS_BIG_ENDIAN)
 word = (GET_MODE_BITSIZE (fmode) - bitpos) / BITS_PER_WORD;
      else
 word = bitpos / BITS_PER_WORD;
      temp = operand_subword_force (temp, word, fmode);
      bitpos = bitpos % BITS_PER_WORD;
    }




  temp = force_reg (imode, temp);





  if (bitpos < GET_MODE_BITSIZE (rmode))
    {
      if (bitpos < HOST_BITS_PER_WIDE_INT)
 {
   hi = 0;
   lo = (HOST_WIDE_INT) 1 << bitpos;
 }
      else
 {
   hi = (HOST_WIDE_INT) 1 << (bitpos - HOST_BITS_PER_WIDE_INT);
   lo = 0;
 }

      if (imode != rmode)
 temp = gen_lowpart (rmode, temp);
      temp = expand_binop (rmode, and_optab, temp,
      immed_double_const (lo, hi, rmode),
      NULL_RTX, 1, OPTAB_LIB_WIDEN);
    }
  else
    {



      temp = expand_shift (RSHIFT_EXPR, imode, temp,
      build_int_cst (NULL_TREE, bitpos), NULL_RTX, 1);
      temp = gen_lowpart (rmode, temp);
      temp = expand_binop (rmode, and_optab, temp, const1_rtx,
      NULL_RTX, 1, OPTAB_LIB_WIDEN);
    }

  return temp;
}
