
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ALTIVEC_REGNO_P (int) ;
 int DFmode ;
 scalar_t__ FP_REGNO_P (int) ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ INT_REGNO_P (int) ;
 scalar_t__ LO_SUM ;
 scalar_t__ MEM ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ PRE_DEC ;
 scalar_t__ PRE_INC ;
 int Pmode ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ TARGET_32BIT ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_POWERPC64 ;
 scalar_t__ TARGET_UPDATE ;
 int TFmode ;
 int V16QImode ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_movdi_di_update (int ,int ,int ,int ) ;
 int gen_movdi_si_update (int ,int ,int ,int ) ;
 int gen_movsi_update (int ,int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int** hard_regno_nregs ;
 int replace_equiv_address (int ,int ) ;
 int rs6000_offsettable_memref_p (int ) ;
 int simplify_gen_subreg (int,int ,int,int) ;
 int word_mode ;

void
rs6000_split_multireg_move (rtx dst, rtx src)
{

  int reg;

  enum machine_mode mode;

  enum machine_mode reg_mode;
  int reg_mode_size;

  int nregs;

  reg = REG_P (dst) ? REGNO (dst) : REGNO (src);
  mode = GET_MODE (dst);
  nregs = hard_regno_nregs[reg][mode];
  if (FP_REGNO_P (reg))
    reg_mode = DFmode;
  else if (ALTIVEC_REGNO_P (reg))
    reg_mode = V16QImode;
  else if (TARGET_E500_DOUBLE && mode == TFmode)
    reg_mode = DFmode;
  else
    reg_mode = word_mode;
  reg_mode_size = GET_MODE_SIZE (reg_mode);

  gcc_assert (reg_mode_size * nregs == GET_MODE_SIZE (mode));

  if (REG_P (src) && REG_P (dst) && (REGNO (src) < REGNO (dst)))
    {


      int i;
      for (i = nregs - 1; i >= 0; i--)
 emit_insn (gen_rtx_SET (VOIDmode,
    simplify_gen_subreg (reg_mode, dst, mode,
           i * reg_mode_size),
    simplify_gen_subreg (reg_mode, src, mode,
           i * reg_mode_size)));
    }
  else
    {
      int i;
      int j = -1;
      bool used_update = 0;

      if (MEM_P (src) && INT_REGNO_P (reg))
 {
   rtx breg;

   if (GET_CODE (XEXP (src, 0)) == PRE_INC
       || GET_CODE (XEXP (src, 0)) == PRE_DEC)
     {
       rtx delta_rtx;
       breg = XEXP (XEXP (src, 0), 0);
       delta_rtx = (GET_CODE (XEXP (src, 0)) == PRE_INC
      ? GEN_INT (GET_MODE_SIZE (GET_MODE (src)))
      : GEN_INT (-GET_MODE_SIZE (GET_MODE (src))));
       emit_insn (TARGET_32BIT
    ? gen_addsi3 (breg, breg, delta_rtx)
    : gen_adddi3 (breg, breg, delta_rtx));
       src = replace_equiv_address (src, breg);
     }
   else if (! rs6000_offsettable_memref_p (src))
     {
       rtx basereg;
       basereg = gen_rtx_REG (Pmode, reg);
       emit_insn (gen_rtx_SET (VOIDmode, basereg, XEXP (src, 0)));
       src = replace_equiv_address (src, basereg);
     }

   breg = XEXP (src, 0);
   if (GET_CODE (breg) == PLUS || GET_CODE (breg) == LO_SUM)
     breg = XEXP (breg, 0);



   if (REG_P (breg)
       && REGNO (breg) >= REGNO (dst)
       && REGNO (breg) < REGNO (dst) + nregs)
     j = REGNO (breg) - REGNO (dst);
 }

      if (GET_CODE (dst) == MEM && INT_REGNO_P (reg))
 {
   rtx breg;

   if (GET_CODE (XEXP (dst, 0)) == PRE_INC
       || GET_CODE (XEXP (dst, 0)) == PRE_DEC)
     {
       rtx delta_rtx;
       breg = XEXP (XEXP (dst, 0), 0);
       delta_rtx = (GET_CODE (XEXP (dst, 0)) == PRE_INC
      ? GEN_INT (GET_MODE_SIZE (GET_MODE (dst)))
      : GEN_INT (-GET_MODE_SIZE (GET_MODE (dst))));




       if (TARGET_UPDATE)
  {
    rtx nsrc = simplify_gen_subreg (reg_mode, src, mode, 0);
    emit_insn (TARGET_32BIT
        ? (TARGET_POWERPC64
    ? gen_movdi_si_update (breg, breg, delta_rtx, nsrc)
    : gen_movsi_update (breg, breg, delta_rtx, nsrc))
        : gen_movdi_di_update (breg, breg, delta_rtx, nsrc));
    used_update = 1;
  }
       else
  emit_insn (TARGET_32BIT
      ? gen_addsi3 (breg, breg, delta_rtx)
      : gen_adddi3 (breg, breg, delta_rtx));
       dst = replace_equiv_address (dst, breg);
     }
   else
     gcc_assert (rs6000_offsettable_memref_p (dst));
 }

      for (i = 0; i < nregs; i++)
 {

   ++j;
   if (j == nregs)
     j = 0;



   if (j == 0 && used_update)
     continue;

   emit_insn (gen_rtx_SET (VOIDmode,
      simplify_gen_subreg (reg_mode, dst, mode,
             j * reg_mode_size),
      simplify_gen_subreg (reg_mode, src, mode,
             j * reg_mode_size)));
 }
    }
}
