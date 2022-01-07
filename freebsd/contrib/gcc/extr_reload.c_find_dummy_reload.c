
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {TYPE_2__ il; } ;
struct TYPE_7__ {scalar_t__ out; } ;
struct TYPE_5__ {int global_live_at_end; } ;


 TYPE_4__* ENTRY_BLOCK_PTR ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ HARD_REGNO_MODE_OK (int,int) ;
 int NO_REGS ;
 unsigned int ORIGINAL_REGNO (scalar_t__) ;
 scalar_t__ PATTERN (int ) ;
 int PREFERRED_RELOAD_CLASS (scalar_t__,int) ;
 int REGNO (scalar_t__) ;
 int REG_DEAD ;
 scalar_t__ REG_P (scalar_t__) ;
 int REG_UNUSED ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int TEST_HARD_REG_BIT (int ,unsigned int) ;
 scalar_t__ UNITS_PER_WORD ;
 int VOIDmode ;
 int bitmap_bit_p (int ,unsigned int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ find_reg_note (int ,int ,scalar_t__) ;
 int * fixed_regs ;
 scalar_t__ gen_rtx_REG (int,unsigned int) ;
 int hard_reg_set_here_p (unsigned int,unsigned int,scalar_t__) ;
 unsigned int** hard_regno_nregs ;
 scalar_t__ hard_regs_live_known ;
 int refers_to_regno_for_reload_p (unsigned int,unsigned int,scalar_t__,scalar_t__*) ;
 int * reg_class_contents ;
 TYPE_3__* rld ;
 scalar_t__ subreg_regno_offset (int,int,int ,int) ;
 int this_insn ;

__attribute__((used)) static rtx
find_dummy_reload (rtx real_in, rtx real_out, rtx *inloc, rtx *outloc,
     enum machine_mode inmode, enum machine_mode outmode,
     enum reg_class class, int for_real, int earlyclobber)
{
  rtx in = real_in;
  rtx out = real_out;
  int in_offset = 0;
  int out_offset = 0;
  rtx value = 0;



  if (GET_MODE_SIZE (outmode) != GET_MODE_SIZE (inmode)
      && (GET_MODE_SIZE (outmode) > UNITS_PER_WORD
   || GET_MODE_SIZE (inmode) > UNITS_PER_WORD))
    return 0;





  while (GET_CODE (out) == SUBREG)
    {
      if (REG_P (SUBREG_REG (out))
   && REGNO (SUBREG_REG (out)) < FIRST_PSEUDO_REGISTER)
 out_offset += subreg_regno_offset (REGNO (SUBREG_REG (out)),
        GET_MODE (SUBREG_REG (out)),
        SUBREG_BYTE (out),
        GET_MODE (out));
      out = SUBREG_REG (out);
    }
  while (GET_CODE (in) == SUBREG)
    {
      if (REG_P (SUBREG_REG (in))
   && REGNO (SUBREG_REG (in)) < FIRST_PSEUDO_REGISTER)
 in_offset += subreg_regno_offset (REGNO (SUBREG_REG (in)),
       GET_MODE (SUBREG_REG (in)),
       SUBREG_BYTE (in),
       GET_MODE (in));
      in = SUBREG_REG (in);
    }



  {
    enum reg_class preferred_class = PREFERRED_RELOAD_CLASS (in, class);
    if (preferred_class != NO_REGS)
      class = preferred_class;
  }


  if (REG_P (out)
      && REGNO (out) < FIRST_PSEUDO_REGISTER)
    {
      unsigned int regno = REGNO (out) + out_offset;
      unsigned int nwords = hard_regno_nregs[regno][outmode];
      rtx saved_rtx;
      saved_rtx = *inloc;
      *inloc = const0_rtx;

      if (regno < FIRST_PSEUDO_REGISTER
   && HARD_REGNO_MODE_OK (regno, outmode)
   && ! refers_to_regno_for_reload_p (regno, regno + nwords,
          PATTERN (this_insn), outloc))
 {
   unsigned int i;

   for (i = 0; i < nwords; i++)
     if (! TEST_HARD_REG_BIT (reg_class_contents[(int) class],
         regno + i))
       break;

   if (i == nwords)
     {
       if (REG_P (real_out))
  value = real_out;
       else
  value = gen_rtx_REG (outmode, regno);
     }
 }

      *inloc = saved_rtx;
    }







  if (hard_regs_live_known
      && REG_P (in)
      && REGNO (in) < FIRST_PSEUDO_REGISTER
      && (value == 0
   || find_reg_note (this_insn, REG_UNUSED, real_out))
      && find_reg_note (this_insn, REG_DEAD, real_in)
      && !fixed_regs[REGNO (in)]
      && HARD_REGNO_MODE_OK (REGNO (in),




        (GET_MODE (out) != VOIDmode
         ? GET_MODE (out) : outmode))







      && (ORIGINAL_REGNO (in) < FIRST_PSEUDO_REGISTER
          || ! bitmap_bit_p (ENTRY_BLOCK_PTR->il.rtl->global_live_at_end,
        ORIGINAL_REGNO (in))))
    {
      unsigned int regno = REGNO (in) + in_offset;
      unsigned int nwords = hard_regno_nregs[regno][inmode];

      if (! refers_to_regno_for_reload_p (regno, regno + nwords, out, (rtx*) 0)
   && ! hard_reg_set_here_p (regno, regno + nwords,
        PATTERN (this_insn))
   && (! earlyclobber
       || ! refers_to_regno_for_reload_p (regno, regno + nwords,
       PATTERN (this_insn), inloc)))
 {
   unsigned int i;

   for (i = 0; i < nwords; i++)
     if (! TEST_HARD_REG_BIT (reg_class_contents[(int) class],
         regno + i))
       break;

   if (i == nwords)
     {



       if (for_real >= 0 && value == real_out)
  rld[for_real].out = 0;
       if (REG_P (real_in))
  value = real_in;
       else
  value = gen_rtx_REG (inmode, regno);
     }
 }
    }

  return value;
}
