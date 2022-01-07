
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algorithm {int* op; int ops; int* log; } ;
typedef scalar_t__ rtx ;
typedef enum mult_variant { ____Placeholder_mult_variant } mult_variant ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (int ) ;
 int GET_MODE_MASK (int) ;
 int LSHIFT_EXPR ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int NULL_TREE ;
 int REG_EQUAL ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (scalar_t__) ;
 int add_variant ;



 int alg_m ;




 int alg_zero ;
 int build_int_cst (int ,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ copy_to_mode_reg (int,scalar_t__) ;
 scalar_t__ expand_shift (int ,int,scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ expand_unop (int,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ force_operand (int ,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_lowpart (int,scalar_t__) ;
 int gen_rtx_MINUS (int,scalar_t__,scalar_t__) ;
 int gen_rtx_MULT (int,scalar_t__,int ) ;
 int gen_rtx_PLUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ get_last_insn () ;
 int neg_optab ;
 int negate_variant ;
 scalar_t__ optimize ;
 int set_unique_reg_note (scalar_t__,int ,int ) ;

__attribute__((used)) static rtx
expand_mult_const (enum machine_mode mode, rtx op0, HOST_WIDE_INT val,
     rtx target, const struct algorithm *alg,
     enum mult_variant variant)
{
  HOST_WIDE_INT val_so_far;
  rtx insn, accum, tem;
  int opno;
  enum machine_mode nmode;



  if (MEM_P (op0))
    op0 = force_reg (mode, op0);




  if (alg->op[0] == alg_zero)
    {
      accum = copy_to_mode_reg (mode, const0_rtx);
      val_so_far = 0;
    }
  else if (alg->op[0] == alg_m)
    {
      accum = copy_to_mode_reg (mode, op0);
      val_so_far = 1;
    }
  else
    gcc_unreachable ();

  for (opno = 1; opno < alg->ops; opno++)
    {
      int log = alg->log[opno];
      rtx shift_subtarget = optimize ? 0 : accum;
      rtx add_target
 = (opno == alg->ops - 1 && target != 0 && variant != add_variant
    && !optimize)
   ? target : 0;
      rtx accum_target = optimize ? 0 : accum;

      switch (alg->op[opno])
 {
 case 131:
   accum = expand_shift (LSHIFT_EXPR, mode, accum,
    build_int_cst (NULL_TREE, log),
    NULL_RTX, 0);
   val_so_far <<= log;
   break;

 case 132:
   tem = expand_shift (LSHIFT_EXPR, mode, op0,
         build_int_cst (NULL_TREE, log),
         NULL_RTX, 0);
   accum = force_operand (gen_rtx_PLUS (mode, accum, tem),
     add_target ? add_target : accum_target);
   val_so_far += (HOST_WIDE_INT) 1 << log;
   break;

 case 128:
   tem = expand_shift (LSHIFT_EXPR, mode, op0,
         build_int_cst (NULL_TREE, log),
         NULL_RTX, 0);
   accum = force_operand (gen_rtx_MINUS (mode, accum, tem),
     add_target ? add_target : accum_target);
   val_so_far -= (HOST_WIDE_INT) 1 << log;
   break;

 case 133:
   accum = expand_shift (LSHIFT_EXPR, mode, accum,
    build_int_cst (NULL_TREE, log),
    shift_subtarget,
    0);
   accum = force_operand (gen_rtx_PLUS (mode, accum, op0),
     add_target ? add_target : accum_target);
   val_so_far = (val_so_far << log) + 1;
   break;

 case 129:
   accum = expand_shift (LSHIFT_EXPR, mode, accum,
    build_int_cst (NULL_TREE, log),
    shift_subtarget, 0);
   accum = force_operand (gen_rtx_MINUS (mode, accum, op0),
     add_target ? add_target : accum_target);
   val_so_far = (val_so_far << log) - 1;
   break;

 case 134:
   tem = expand_shift (LSHIFT_EXPR, mode, accum,
         build_int_cst (NULL_TREE, log),
         NULL_RTX, 0);
   accum = force_operand (gen_rtx_PLUS (mode, accum, tem),
     add_target ? add_target : accum_target);
   val_so_far += val_so_far << log;
   break;

 case 130:
   tem = expand_shift (LSHIFT_EXPR, mode, accum,
         build_int_cst (NULL_TREE, log),
         NULL_RTX, 0);
   accum = force_operand (gen_rtx_MINUS (mode, tem, accum),
     (add_target
      ? add_target : (optimize ? 0 : tem)));
   val_so_far = (val_so_far << log) - val_so_far;
   break;

 default:
   gcc_unreachable ();
 }






      tem = op0, nmode = mode;
      if (GET_CODE (accum) == SUBREG)
 {
   nmode = GET_MODE (SUBREG_REG (accum));
   tem = gen_lowpart (nmode, op0);
 }

      insn = get_last_insn ();
      set_unique_reg_note (insn, REG_EQUAL,
      gen_rtx_MULT (nmode, tem, GEN_INT (val_so_far)));
    }

  if (variant == negate_variant)
    {
      val_so_far = -val_so_far;
      accum = expand_unop (mode, neg_optab, accum, target, 0);
    }
  else if (variant == add_variant)
    {
      val_so_far = val_so_far + 1;
      accum = force_operand (gen_rtx_PLUS (mode, accum, op0), target);
    }



  val &= GET_MODE_MASK (mode);
  val_so_far &= GET_MODE_MASK (mode);
  gcc_assert (val == val_so_far);

  return accum;
}
