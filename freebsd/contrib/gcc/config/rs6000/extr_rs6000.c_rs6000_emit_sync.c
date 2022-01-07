
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int rtvec ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;



 scalar_t__ BYTES_BIG_ENDIAN ;
 int CCmode ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_MASK (int) ;
 int HImode ;

 int MEM_ALIGN (scalar_t__) ;

 scalar_t__ NOT ;
 scalar_t__ NULL_RTX ;
 int OPTAB_LIB_WIDEN ;

 int Pmode ;
 int QImode ;
 int SImode ;
 int UNSPEC_SYNC_OP ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int ) ;

 int and_optab ;
 scalar_t__ change_address (scalar_t__,int,scalar_t__) ;
 int convert_move (scalar_t__,scalar_t__,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ force_reg (int,int ) ;
 int gcc_unreachable () ;
 int gen_ashlsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_isync () ;
 int gen_lowpart_common (int,scalar_t__) ;
 int gen_lshrsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_memory_barrier () ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rlwinm (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gen_rotlsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_rtvec (int,scalar_t__,...) ;
 scalar_t__ gen_rtx_AND (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int ,int ) ;
 scalar_t__ gen_rtx_IOR (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_MINUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_NOT (int,scalar_t__) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 scalar_t__ gen_rtx_PLUS (int,scalar_t__,scalar_t__) ;
 int gen_rtx_SCRATCH (int) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int,int ,int ) ;
 scalar_t__ gen_rtx_XOR (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int,scalar_t__,scalar_t__) ;
 int gen_xorsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int ior_optab ;
 scalar_t__ lowpart_subreg (int,scalar_t__,int) ;
 int set_mem_align (scalar_t__,int) ;
 scalar_t__ simplify_gen_binary (int,int,scalar_t__,scalar_t__) ;

void
rs6000_emit_sync (enum rtx_code code, enum machine_mode mode,
    rtx m, rtx op, rtx before_param, rtx after_param,
    bool sync_p)
{
  enum machine_mode used_mode;
  rtx the_op, set_before, set_after, set_atomic, cc_scratch, before, after;
  rtx used_m;
  rtvec vec;
  HOST_WIDE_INT imask = GET_MODE_MASK (mode);
  rtx shift = NULL_RTX;

  if (sync_p)
    emit_insn (gen_memory_barrier ());

  if (GET_CODE (m) == NOT)
    used_m = XEXP (m, 0);
  else
    used_m = m;



  if (mode == QImode || mode == HImode)
    {
      rtx newop, oldop;

      if (MEM_ALIGN (used_m) >= 32)
 {
   int ishift = 0;
   if (BYTES_BIG_ENDIAN)
     ishift = GET_MODE_BITSIZE (SImode) - GET_MODE_BITSIZE (mode);

   shift = GEN_INT (ishift);
 }
      else
 {
   rtx addrSI, aligned_addr;
   int shift_mask = mode == QImode ? 0x18 : 0x10;

   addrSI = force_reg (SImode, gen_lowpart_common (SImode,
         XEXP (used_m, 0)));
   shift = gen_reg_rtx (SImode);

   emit_insn (gen_rlwinm (shift, addrSI, GEN_INT (3),
     GEN_INT (shift_mask)));
   emit_insn (gen_xorsi3 (shift, shift, GEN_INT (shift_mask)));

   aligned_addr = expand_binop (Pmode, and_optab,
           XEXP (used_m, 0),
           GEN_INT (-4), NULL_RTX,
           1, OPTAB_LIB_WIDEN);
   used_m = change_address (used_m, SImode, aligned_addr);
   set_mem_align (used_m, 32);



   if (GET_CODE (m) == NOT)
     m = gen_rtx_NOT (SImode, used_m);
   else
     m = used_m;
 }

      if (GET_CODE (op) == NOT)
 {
   oldop = lowpart_subreg (SImode, XEXP (op, 0), mode);
   oldop = gen_rtx_NOT (SImode, oldop);
 }
      else
 oldop = lowpart_subreg (SImode, op, mode);

      switch (code)
 {
 case 131:
 case 128:
   newop = expand_binop (SImode, and_optab,
    oldop, GEN_INT (imask), NULL_RTX,
    1, OPTAB_LIB_WIDEN);
   emit_insn (gen_ashlsi3 (newop, newop, shift));
   break;

 case 132:
   newop = expand_binop (SImode, ior_optab,
    oldop, GEN_INT (~imask), NULL_RTX,
    1, OPTAB_LIB_WIDEN);
   emit_insn (gen_rotlsi3 (newop, newop, shift));
   break;

 case 129:
 case 130:
   {
     rtx mask;

     newop = expand_binop (SImode, and_optab,
      oldop, GEN_INT (imask), NULL_RTX,
      1, OPTAB_LIB_WIDEN);
     emit_insn (gen_ashlsi3 (newop, newop, shift));

     mask = gen_reg_rtx (SImode);
     emit_move_insn (mask, GEN_INT (imask));
     emit_insn (gen_ashlsi3 (mask, mask, shift));

     if (code == 129)
       newop = gen_rtx_PLUS (SImode, m, newop);
     else
       newop = gen_rtx_MINUS (SImode, m, newop);
     newop = gen_rtx_AND (SImode, newop, mask);
     newop = gen_rtx_IOR (SImode, newop,
     gen_rtx_AND (SImode,
           gen_rtx_NOT (SImode, mask),
           m));
     break;
   }

 default:
   gcc_unreachable ();
 }

      if (GET_CODE (m) == NOT)
 {
   rtx mask, xorm;

   mask = gen_reg_rtx (SImode);
   emit_move_insn (mask, GEN_INT (imask));
   emit_insn (gen_ashlsi3 (mask, mask, shift));

   xorm = gen_rtx_XOR (SImode, used_m, mask);


   newop = simplify_gen_binary (code, SImode, xorm, newop);
 }
      op = newop;
      used_mode = SImode;
      before = gen_reg_rtx (used_mode);
      after = gen_reg_rtx (used_mode);
    }
  else
    {
      used_mode = mode;
      before = before_param;
      after = after_param;

      if (before == NULL_RTX)
 before = gen_reg_rtx (used_mode);
      if (after == NULL_RTX)
 after = gen_reg_rtx (used_mode);
    }

  if ((code == 129 || code == 130 || GET_CODE (m) == NOT)
      && used_mode != mode)
    the_op = op;
  else if (GET_CODE (op) == NOT && GET_CODE (m) != NOT)
    the_op = gen_rtx_fmt_ee (code, used_mode, op, m);
  else
    the_op = gen_rtx_fmt_ee (code, used_mode, m, op);

  set_after = gen_rtx_SET (VOIDmode, after, the_op);
  set_before = gen_rtx_SET (VOIDmode, before, used_m);
  set_atomic = gen_rtx_SET (VOIDmode, used_m,
       gen_rtx_UNSPEC (used_mode,
         gen_rtvec (1, the_op),
         UNSPEC_SYNC_OP));
  cc_scratch = gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (CCmode));

  if ((code == 129 || code == 130) && used_mode != mode)
    vec = gen_rtvec (5, set_after, set_before, set_atomic, cc_scratch,
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (SImode)));
  else
    vec = gen_rtvec (4, set_after, set_before, set_atomic, cc_scratch);
  emit_insn (gen_rtx_PARALLEL (VOIDmode, vec));


  if (used_mode != mode && before_param)
    {
      emit_insn (gen_lshrsi3 (before, before, shift));
      convert_move (before_param, before, 1);
    }

  if (used_mode != mode && after_param)
    {
      emit_insn (gen_lshrsi3 (after, after, shift));
      convert_move (after_param, after, 1);
    }





  if (sync_p)
    emit_insn (gen_isync ());
}
