
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {TYPE_2__* handlers; } ;
struct TYPE_5__ {int (* type_for_size ) (int,int) ;int (* type_for_mode ) (int,int) ;} ;
struct TYPE_7__ {TYPE_1__ types; } ;
struct TYPE_6__ {int insn_code; } ;
typedef int HOST_WIDE_INT ;
 int const BIT_XOR_EXPR ;
 int BLKmode ;
 int BRANCH_COST ;
 int BUILT_IN_EXPECT ;
 int BUILT_IN_NORMAL ;

 int CODE_FOR_nothing ;



 int CONST0_RTX (int ) ;

 int DECL_BUILT_IN_CLASS (int ) ;
 int DECL_FUNCTION_CODE (int ) ;
 int EQ ;


 int GE ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_CLASS (int) ;
 int GEU ;

 int GT ;
 int GTU ;

 int HOST_BITS_PER_WIDE_INT ;

 int LE ;
 int LEU ;


 int LT ;
 int LTGT ;

 int LTU ;


 int MODE_COMPLEX_FLOAT ;
 int MODE_COMPLEX_INT ;
 int MODE_INT ;
 int NE ;




 scalar_t__ NULL_RTX ;
 int NULL_TREE ;
 int ORDERED ;

 int REG_P (scalar_t__) ;

 int const RSHIFT_EXPR ;
 int SLOW_BYTE_ACCESS ;
 int SUBREG ;
 int SUBREG_PROMOTED_VAR_P (scalar_t__) ;
 int TREE_CHAIN (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_SIDE_EFFECTS (int ) ;
 int TREE_TYPE (int ) ;





 int TYPE_MODE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int UNEQ ;

 int UNGE ;

 int UNGT ;

 int UNLE ;

 int UNLT ;

 int UNORDERED ;

 scalar_t__ XEXP (scalar_t__,int ) ;
 int build2 (int const,int ,int ,int ) ;
 int build_int_cst_type (int ,int) ;
 int can_compare_p (int,int,int ) ;
 int ccp_jump ;
 TYPE_4__* cmp_optab ;
 int compare_tree_int (int ,int ) ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 int do_compare_and_jump (int ,int,int,scalar_t__,scalar_t__) ;
 int do_compare_rtx_and_jump (scalar_t__,int ,int,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int do_jump_by_parts_equality (int ,scalar_t__,scalar_t__) ;
 int do_jump_by_parts_greater (int ,int,scalar_t__,scalar_t__) ;
 int do_pending_stack_adjust () ;
 int emit_insn (scalar_t__) ;
 int emit_jump (scalar_t__) ;
 int emit_label (scalar_t__) ;
 int error_mark_node ;
 scalar_t__ expand_builtin_expect_jump (int ,scalar_t__,scalar_t__) ;
 scalar_t__ expand_normal (int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_label_rtx () ;
 int get_callee_fndecl (int ) ;
 int get_inner_reference (int ,int*,int*,int *,int*,int*,int*,int) ;
 int integer_onep (int ) ;
 int integer_zerop (int ) ;
 TYPE_3__ lang_hooks ;
 int mode_for_size (int,int ,int ) ;
 int prefer_and_bit_test (int,int) ;
 int save_expr (int ) ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int tree_floor_log2 (int ) ;

void
do_jump (tree exp, rtx if_false_label, rtx if_true_label)
{
  enum tree_code code = TREE_CODE (exp);
  rtx temp;
  int i;
  tree type;
  enum machine_mode mode;
  rtx drop_through_label = 0;

  switch (code)
    {
    case 153:
      break;

    case 150:
      temp = integer_zerop (exp) ? if_false_label : if_true_label;
      if (temp)
        emit_jump (temp);
      break;
    case 141:
      if (TREE_CODE (TREE_OPERAND (exp, 0)) == 158
          || TREE_CODE (TREE_OPERAND (exp, 0)) == 160
          || TREE_CODE (TREE_OPERAND (exp, 0)) == 162
          || TREE_CODE (TREE_OPERAND (exp, 0)) == 163)
        goto normal;
    case 155:


      if ((TYPE_PRECISION (TREE_TYPE (exp))
           < TYPE_PRECISION (TREE_TYPE (TREE_OPERAND (exp, 0)))))
        goto normal;
    case 142:
    case 165:
    case 144:
    case 148:
    case 139:

      do_jump (TREE_OPERAND (exp, 0), if_false_label, if_true_label);
      break;

    case 161:



      if (integer_onep (TREE_OPERAND (exp, 1)))
 {
   tree exp0 = TREE_OPERAND (exp, 0);
   rtx set_label, clr_label;


   while ((TREE_CODE (exp0) == 141
    || TREE_CODE (exp0) == 155
    || TREE_CODE (exp0) == 142)
   && TREE_OPERAND (exp0, 0) != error_mark_node
   && TYPE_PRECISION (TREE_TYPE (exp0))
      <= TYPE_PRECISION (TREE_TYPE (TREE_OPERAND (exp0, 0))))
     exp0 = TREE_OPERAND (exp0, 0);


   if (TREE_CODE (exp0) == BIT_XOR_EXPR
       && integer_onep (TREE_OPERAND (exp0, 1)))
     {
       exp0 = TREE_OPERAND (exp0, 0);
       clr_label = if_true_label;
       set_label = if_false_label;
     }
   else
     {
       clr_label = if_false_label;
       set_label = if_true_label;
     }

   if (TREE_CODE (exp0) == RSHIFT_EXPR)
     {
       tree arg = TREE_OPERAND (exp0, 0);
       tree shift = TREE_OPERAND (exp0, 1);
       tree argtype = TREE_TYPE (arg);
       if (TREE_CODE (shift) == 150
    && compare_tree_int (shift, 0) >= 0
    && compare_tree_int (shift, HOST_BITS_PER_WIDE_INT) < 0
    && prefer_and_bit_test (TYPE_MODE (argtype),
       TREE_INT_CST_LOW (shift)))
  {
    HOST_WIDE_INT mask = (HOST_WIDE_INT) 1
           << TREE_INT_CST_LOW (shift);
    do_jump (build2 (161, argtype, arg,
       build_int_cst_type (argtype, mask)),
      clr_label, set_label);
    break;
  }
     }
 }
      if (! SLOW_BYTE_ACCESS
          && TREE_CODE (TREE_OPERAND (exp, 1)) == 150
          && TYPE_PRECISION (TREE_TYPE (exp)) <= HOST_BITS_PER_WIDE_INT
          && (i = tree_floor_log2 (TREE_OPERAND (exp, 1))) >= 0
          && (mode = mode_for_size (i + 1, MODE_INT, 0)) != BLKmode
          && (type = lang_hooks.types.type_for_mode (mode, 1)) != 0
          && TYPE_PRECISION (type) < TYPE_PRECISION (TREE_TYPE (exp))
          && (cmp_optab->handlers[(int) TYPE_MODE (type)].insn_code
              != CODE_FOR_nothing))
        {
          do_jump (fold_convert (type, exp), if_false_label, if_true_label);
          break;
        }
      goto normal;

    case 136:
      do_jump (TREE_OPERAND (exp, 0), if_true_label, if_false_label);
      break;

    case 156:
      {
 rtx label1 = gen_label_rtx ();
 if (!if_true_label || !if_false_label)
   {
     drop_through_label = gen_label_rtx ();
     if (!if_true_label)
       if_true_label = drop_through_label;
     if (!if_false_label)
       if_false_label = drop_through_label;
   }

        do_pending_stack_adjust ();
        do_jump (TREE_OPERAND (exp, 0), label1, NULL_RTX);
        do_jump (TREE_OPERAND (exp, 1), if_false_label, if_true_label);
        emit_label (label1);
        do_jump (TREE_OPERAND (exp, 2), if_false_label, if_true_label);
 break;
      }

    case 138:
    case 135:
    case 157:

      gcc_unreachable ();

    case 158:
    case 160:
    case 162:
    case 163:
      {
        HOST_WIDE_INT bitsize, bitpos;
        int unsignedp;
        enum machine_mode mode;
        tree type;
        tree offset;
        int volatilep = 0;



        get_inner_reference (exp, &bitsize, &bitpos, &offset, &mode,
                             &unsignedp, &volatilep, 0);

        type = lang_hooks.types.type_for_size (bitsize, unsignedp);
        if (! SLOW_BYTE_ACCESS
            && type != 0 && bitsize >= 0
            && TYPE_PRECISION (type) < TYPE_PRECISION (TREE_TYPE (exp))
            && (cmp_optab->handlers[(int) TYPE_MODE (type)].insn_code
  != CODE_FOR_nothing))
          {
            do_jump (fold_convert (type, exp), if_false_label, if_true_label);
            break;
          }
        goto normal;
      }

    case 154:
      {
        tree inner_type = TREE_TYPE (TREE_OPERAND (exp, 0));

        gcc_assert (GET_MODE_CLASS (TYPE_MODE (inner_type))
      != MODE_COMPLEX_FLOAT);
 gcc_assert (GET_MODE_CLASS (TYPE_MODE (inner_type))
      != MODE_COMPLEX_INT);

        if (integer_zerop (TREE_OPERAND (exp, 1)))
          do_jump (TREE_OPERAND (exp, 0), if_true_label, if_false_label);
        else if (GET_MODE_CLASS (TYPE_MODE (inner_type)) == MODE_INT
                 && !can_compare_p (EQ, TYPE_MODE (inner_type), ccp_jump))
          do_jump_by_parts_equality (exp, if_false_label, if_true_label);
        else
          do_compare_and_jump (exp, EQ, EQ, if_false_label, if_true_label);
        break;
      }

    case 145:

      exp = build2 (143, TREE_TYPE (exp),
      TREE_OPERAND (exp, 0),
      TREE_OPERAND (exp, 1));

    case 143:
      {
        tree inner_type = TREE_TYPE (TREE_OPERAND (exp, 0));

        gcc_assert (GET_MODE_CLASS (TYPE_MODE (inner_type))
      != MODE_COMPLEX_FLOAT);
 gcc_assert (GET_MODE_CLASS (TYPE_MODE (inner_type))
      != MODE_COMPLEX_INT);

        if (integer_zerop (TREE_OPERAND (exp, 1)))
          do_jump (TREE_OPERAND (exp, 0), if_false_label, if_true_label);
        else if (GET_MODE_CLASS (TYPE_MODE (inner_type)) == MODE_INT
           && !can_compare_p (NE, TYPE_MODE (inner_type), ccp_jump))
          do_jump_by_parts_equality (exp, if_true_label, if_false_label);
        else
          do_compare_and_jump (exp, NE, NE, if_false_label, if_true_label);
        break;
      }

    case 146:
      mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
      if (GET_MODE_CLASS (mode) == MODE_INT
          && ! can_compare_p (LT, mode, ccp_jump))
        do_jump_by_parts_greater (exp, 1, if_false_label, if_true_label);
      else
        do_compare_and_jump (exp, LT, LTU, if_false_label, if_true_label);
      break;

    case 149:
      mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
      if (GET_MODE_CLASS (mode) == MODE_INT
          && ! can_compare_p (LE, mode, ccp_jump))
        do_jump_by_parts_greater (exp, 0, if_true_label, if_false_label);
      else
        do_compare_and_jump (exp, LE, LEU, if_false_label, if_true_label);
      break;

    case 151:
      mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
      if (GET_MODE_CLASS (mode) == MODE_INT
          && ! can_compare_p (GT, mode, ccp_jump))
        do_jump_by_parts_greater (exp, 0, if_false_label, if_true_label);
      else
        do_compare_and_jump (exp, GT, GTU, if_false_label, if_true_label);
      break;

    case 152:
      mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
      if (GET_MODE_CLASS (mode) == MODE_INT
          && ! can_compare_p (GE, mode, ccp_jump))
        do_jump_by_parts_greater (exp, 1, if_true_label, if_false_label);
      else
        do_compare_and_jump (exp, GE, GEU, if_false_label, if_true_label);
      break;

    case 128:
    case 140:
      {
        enum rtx_code cmp, rcmp;
        int do_rev;

        if (code == 128)
          cmp = UNORDERED, rcmp = ORDERED;
        else
          cmp = ORDERED, rcmp = UNORDERED;
        mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));

        do_rev = 0;
        if (! can_compare_p (cmp, mode, ccp_jump)
            && (can_compare_p (rcmp, mode, ccp_jump)


          || rcmp == UNORDERED))
          do_rev = 1;

        if (! do_rev)
          do_compare_and_jump (exp, cmp, cmp, if_false_label, if_true_label);
        else
          do_compare_and_jump (exp, rcmp, rcmp, if_true_label, if_false_label);
      }
      break;

    {
      enum rtx_code rcode1;
      enum tree_code tcode1, tcode2;

      case 129:
        rcode1 = UNLT;
        tcode1 = 128;
        tcode2 = 146;
        goto unordered_bcc;
      case 130:
        rcode1 = UNLE;
        tcode1 = 128;
        tcode2 = 149;
        goto unordered_bcc;
      case 131:
        rcode1 = UNGT;
        tcode1 = 128;
        tcode2 = 151;
        goto unordered_bcc;
      case 132:
        rcode1 = UNGE;
        tcode1 = 128;
        tcode2 = 152;
        goto unordered_bcc;
      case 133:
        rcode1 = UNEQ;
        tcode1 = 128;
        tcode2 = 154;
        goto unordered_bcc;
      case 147:


        rcode1 = LTGT;
        tcode1 = 146;
        tcode2 = 151;
        goto unordered_bcc;

      unordered_bcc:
        mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
        if (can_compare_p (rcode1, mode, ccp_jump))
          do_compare_and_jump (exp, rcode1, rcode1, if_false_label,
                               if_true_label);
        else
          {
            tree op0 = save_expr (TREE_OPERAND (exp, 0));
            tree op1 = save_expr (TREE_OPERAND (exp, 1));
            tree cmp0, cmp1;



     if (if_true_label == 0)
       drop_through_label = if_true_label = gen_label_rtx ();

            cmp0 = fold_build2 (tcode1, TREE_TYPE (exp), op0, op1);
            cmp1 = fold_build2 (tcode2, TREE_TYPE (exp), op0, op1);
     do_jump (cmp0, 0, if_true_label);
     do_jump (cmp1, if_false_label, if_true_label);
          }
      }
      break;

    case 137:



      if (BRANCH_COST >= 4 || TREE_SIDE_EFFECTS (TREE_OPERAND (exp, 1)))
 goto normal;

      if (if_false_label == NULL_RTX)
        {
   drop_through_label = gen_label_rtx ();
          do_jump (TREE_OPERAND (exp, 0), drop_through_label, NULL_RTX);
          do_jump (TREE_OPERAND (exp, 1), NULL_RTX, if_true_label);
 }
      else
 {
   do_jump (TREE_OPERAND (exp, 0), if_false_label, NULL_RTX);
          do_jump (TREE_OPERAND (exp, 1), if_false_label, if_true_label);
 }
      break;

    case 134:



      if (BRANCH_COST >= 4 || TREE_SIDE_EFFECTS (TREE_OPERAND (exp, 1)))
 goto normal;

      if (if_true_label == NULL_RTX)
 {
          drop_through_label = gen_label_rtx ();
          do_jump (TREE_OPERAND (exp, 0), NULL_RTX, drop_through_label);
          do_jump (TREE_OPERAND (exp, 1), if_false_label, NULL_RTX);
 }
      else
 {
          do_jump (TREE_OPERAND (exp, 0), NULL_RTX, if_true_label);
          do_jump (TREE_OPERAND (exp, 1), if_false_label, if_true_label);
 }
      break;
    case 159:

      {
 tree fndecl = get_callee_fndecl (exp);
 tree arglist = TREE_OPERAND (exp, 1);

 if (fndecl
     && DECL_BUILT_IN_CLASS (fndecl) == BUILT_IN_NORMAL
     && DECL_FUNCTION_CODE (fndecl) == BUILT_IN_EXPECT
     && arglist != NULL_TREE
     && TREE_CHAIN (arglist) != NULL_TREE)
   {
     rtx seq = expand_builtin_expect_jump (exp, if_false_label,
        if_true_label);

     if (seq != NULL_RTX)
       {
  emit_insn (seq);
  return;
       }
   }
      }


    default:
    normal:
      temp = expand_normal (exp);
      do_pending_stack_adjust ();

      if (GET_CODE (temp) == SUBREG)
 {

   if (SUBREG_PROMOTED_VAR_P (temp)
       && REG_P (XEXP (temp, 0)))
     temp = XEXP (temp, 0);
   else
     temp = copy_to_reg (temp);
 }
      do_compare_rtx_and_jump (temp, CONST0_RTX (GET_MODE (temp)),
          NE, TYPE_UNSIGNED (TREE_TYPE (exp)),
          GET_MODE (temp), NULL_RTX,
          if_false_label, if_true_label);
    }

  if (drop_through_label)
    {
      do_pending_stack_adjust ();
      emit_label (drop_through_label);
    }
}
