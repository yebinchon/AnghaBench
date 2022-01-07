
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;


 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE_SIZE (int ) ;

 int LCT_NORMAL ;



 scalar_t__ MEM ;

 int NULL_RTX ;

 int Pmode ;
 int SImode ;
 int TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 int TFmode ;






 int XEXP (int ,int ) ;
 int assign_stack_temp (int ,int ,int ) ;
 int const0_rtx ;
 int const1_rtx ;
 int const2_rtx ;
 int emit_cmp_insn (int ,int ,int const,int ,int,int ) ;
 int emit_insn (int ) ;
 int emit_library_call (int ,int ,int,int,int ,int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_unreachable () ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_anddi3 (int ,int ,int ) ;
 int gen_andsi3 (int ,int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_SYMBOL_REF (int ,char const*) ;
 int hard_libcall_value (int) ;

void
sparc_emit_float_lib_cmp (rtx x, rtx y, enum rtx_code comparison)
{
  const char *qpfunc;
  rtx slot0, slot1, result, tem, tem2;
  enum machine_mode mode;

  switch (comparison)
    {
    case 141:
      qpfunc = (TARGET_ARCH64) ? "_Qp_feq" : "_Q_feq";
      break;

    case 135:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fne" : "_Q_fne";
      break;

    case 139:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fgt" : "_Q_fgt";
      break;

    case 140:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fge" : "_Q_fge";
      break;

    case 137:
      qpfunc = (TARGET_ARCH64) ? "_Qp_flt" : "_Q_flt";
      break;

    case 138:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fle" : "_Q_fle";
      break;

    case 134:
    case 128:
    case 131:
    case 129:
    case 133:
    case 132:
    case 130:
    case 136:
      qpfunc = (TARGET_ARCH64) ? "_Qp_cmp" : "_Q_cmp";
      break;

    default:
      gcc_unreachable ();
    }

  if (TARGET_ARCH64)
    {
      if (GET_CODE (x) != MEM)
 {
   slot0 = assign_stack_temp (TFmode, GET_MODE_SIZE(TFmode), 0);
   emit_move_insn (slot0, x);
 }
      else
 slot0 = x;

      if (GET_CODE (y) != MEM)
 {
   slot1 = assign_stack_temp (TFmode, GET_MODE_SIZE(TFmode), 0);
   emit_move_insn (slot1, y);
 }
      else
 slot1 = y;

      emit_library_call (gen_rtx_SYMBOL_REF (Pmode, qpfunc), LCT_NORMAL,
    DImode, 2,
    XEXP (slot0, 0), Pmode,
    XEXP (slot1, 0), Pmode);

      mode = DImode;
    }
  else
    {
      emit_library_call (gen_rtx_SYMBOL_REF (Pmode, qpfunc), LCT_NORMAL,
    SImode, 2,
    x, TFmode, y, TFmode);

      mode = SImode;
    }





  result = gen_reg_rtx (mode);
  emit_move_insn (result, hard_libcall_value (mode));

  switch (comparison)
    {
    default:
      emit_cmp_insn (result, const0_rtx, 135, NULL_RTX, mode, 0);
      break;
    case 134:
    case 128:
      emit_cmp_insn (result, GEN_INT(3), comparison == 128 ? 141 : 135,
       NULL_RTX, mode, 0);
      break;
    case 131:
    case 132:
      emit_cmp_insn (result, const1_rtx,
       comparison == 131 ? 139 : 135, NULL_RTX, mode, 0);
      break;
    case 130:
      emit_cmp_insn (result, const2_rtx, 135, NULL_RTX, mode, 0);
      break;
    case 129:
      tem = gen_reg_rtx (mode);
      if (TARGET_ARCH32)
 emit_insn (gen_andsi3 (tem, result, const1_rtx));
      else
 emit_insn (gen_anddi3 (tem, result, const1_rtx));
      emit_cmp_insn (tem, const0_rtx, 135, NULL_RTX, mode, 0);
      break;
    case 133:
    case 136:
      tem = gen_reg_rtx (mode);
      if (TARGET_ARCH32)
 emit_insn (gen_addsi3 (tem, result, const1_rtx));
      else
 emit_insn (gen_adddi3 (tem, result, const1_rtx));
      tem2 = gen_reg_rtx (mode);
      if (TARGET_ARCH32)
 emit_insn (gen_andsi3 (tem2, tem, const2_rtx));
      else
 emit_insn (gen_anddi3 (tem2, tem, const2_rtx));
      emit_cmp_insn (tem2, const0_rtx, comparison == 133 ? 141 : 135,
       NULL_RTX, mode, 0);
      break;
    }
}
