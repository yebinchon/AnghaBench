
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int BITS_PER_WORD ;
 scalar_t__ CONCAT ;
 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 unsigned int GET_MODE_BITSIZE (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 size_t REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ adjust_address_nv (scalar_t__,int,int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;
 scalar_t__ simplify_gen_subreg (int,scalar_t__,int,int ) ;
 int store_bit_field (scalar_t__,unsigned int,unsigned int,int,scalar_t__) ;

__attribute__((used)) static void
write_complex_part (rtx cplx, rtx val, bool imag_p)
{
  enum machine_mode cmode;
  enum machine_mode imode;
  unsigned ibitsize;

  if (GET_CODE (cplx) == CONCAT)
    {
      emit_move_insn (XEXP (cplx, imag_p), val);
      return;
    }

  cmode = GET_MODE (cplx);
  imode = GET_MODE_INNER (cmode);
  ibitsize = GET_MODE_BITSIZE (imode);






  if (MEM_P (cplx))
    {
      emit_move_insn (adjust_address_nv (cplx, imode,
      imag_p ? GET_MODE_SIZE (imode) : 0),
        val);
      return;
    }





  if (ibitsize >= BITS_PER_WORD




      || (REG_P (cplx)
   && REGNO (cplx) < FIRST_PSEUDO_REGISTER
   && hard_regno_nregs[REGNO (cplx)][cmode] % 2 == 0))
    {
      rtx part = simplify_gen_subreg (imode, cplx, cmode,
          imag_p ? GET_MODE_SIZE (imode) : 0);
      if (part)
        {
   emit_move_insn (part, val);
   return;
 }
      else

 gcc_assert (MEM_P (cplx) && ibitsize < BITS_PER_WORD);
    }

  store_bit_field (cplx, ibitsize, imag_p ? ibitsize : 0, imode, val);
}
