
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int libfunc; } ;



 scalar_t__ FLOAT_LIB_COMPARE_RETURNS_BOOL (int,int) ;

 int GET_MODE (int ) ;
 int GET_MODE_WIDER_MODE (int) ;

 int IF_THEN_ELSE ;
 int LCT_CONST ;



 int NULL_RTX ;
 int UNORDERED ;
 int VOIDmode ;
 TYPE_2__** code_to_optab ;
 int const0_rtx ;
 int const1_rtx ;
 int const_true_rtx ;
 int constm1_rtx ;
 int convert_to_mode (int,int ,int ) ;
 int emit_libcall_block (int ,int ,int ,int ) ;
 int emit_library_call_value (int ,int ,int ,int,int,int ,int,int ,int) ;
 int end_sequence () ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gen_reg_rtx (int) ;
 int get_insns () ;
 int reverse_condition_maybe_unordered (int) ;
 int simplify_gen_relational (int,int,int,int ,int ) ;
 int simplify_gen_ternary (int ,int,int,int ,int ,int ) ;
 int start_sequence () ;
 int swap_condition (int) ;
 int word_mode ;

__attribute__((used)) static void
prepare_float_lib_cmp (rtx *px, rtx *py, enum rtx_code *pcomparison,
         enum machine_mode *pmode, int *punsignedp)
{
  enum rtx_code comparison = *pcomparison;
  enum rtx_code swapped = swap_condition (comparison);
  enum rtx_code reversed = reverse_condition_maybe_unordered (comparison);
  rtx x = *px;
  rtx y = *py;
  enum machine_mode orig_mode = GET_MODE (x);
  enum machine_mode mode;
  rtx value, target, insns, equiv;
  rtx libfunc = 0;
  bool reversed_p = 0;

  for (mode = orig_mode;
       mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      if ((libfunc = code_to_optab[comparison]->handlers[mode].libfunc))
 break;

      if ((libfunc = code_to_optab[swapped]->handlers[mode].libfunc))
 {
   rtx tmp;
   tmp = x; x = y; y = tmp;
   comparison = swapped;
   break;
 }

      if ((libfunc = code_to_optab[reversed]->handlers[mode].libfunc)
   && FLOAT_LIB_COMPARE_RETURNS_BOOL (mode, reversed))
 {
   comparison = reversed;
   reversed_p = 1;
   break;
 }
    }

  gcc_assert (mode != VOIDmode);

  if (mode != orig_mode)
    {
      x = convert_to_mode (mode, x, 0);
      y = convert_to_mode (mode, y, 0);
    }




  if (comparison == UNORDERED)
    {
      rtx temp = simplify_gen_relational (128, word_mode, mode, x, x);
      equiv = simplify_gen_relational (128, word_mode, mode, y, y);
      equiv = simplify_gen_ternary (IF_THEN_ELSE, word_mode, word_mode,
        temp, const_true_rtx, equiv);
    }
  else
    {
      equiv = simplify_gen_relational (comparison, word_mode, mode, x, y);
      if (! FLOAT_LIB_COMPARE_RETURNS_BOOL (mode, comparison))
 {
   rtx true_rtx, false_rtx;

   switch (comparison)
     {
     case 133:
       true_rtx = const0_rtx;
       false_rtx = const_true_rtx;
       break;

     case 128:
       true_rtx = const_true_rtx;
       false_rtx = const0_rtx;
       break;

     case 131:
       true_rtx = const1_rtx;
       false_rtx = const0_rtx;
       break;

     case 132:
       true_rtx = const0_rtx;
       false_rtx = constm1_rtx;
       break;

     case 129:
       true_rtx = constm1_rtx;
       false_rtx = const0_rtx;
       break;

     case 130:
       true_rtx = const0_rtx;
       false_rtx = const1_rtx;
       break;

     default:
       gcc_unreachable ();
     }
   equiv = simplify_gen_ternary (IF_THEN_ELSE, word_mode, word_mode,
     equiv, true_rtx, false_rtx);
 }
    }

  start_sequence ();
  value = emit_library_call_value (libfunc, NULL_RTX, LCT_CONST,
       word_mode, 2, x, mode, y, mode);
  insns = get_insns ();
  end_sequence ();

  target = gen_reg_rtx (word_mode);
  emit_libcall_block (insns, target, value, equiv);

  if (comparison == UNORDERED
      || FLOAT_LIB_COMPARE_RETURNS_BOOL (mode, comparison))
    comparison = reversed_p ? 133 : 128;

  *px = target;
  *py = const0_rtx;
  *pmode = word_mode;
  *pcomparison = comparison;
  *punsignedp = 0;
}
