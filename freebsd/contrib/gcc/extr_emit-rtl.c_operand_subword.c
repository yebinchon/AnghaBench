
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_MODE (int ) ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ MEM_P (int ) ;
 unsigned int UNITS_PER_WORD ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int adjust_address_nv (int ,int ,unsigned int) ;
 int const0_rtx ;
 int gcc_assert (int) ;
 scalar_t__ reload_completed ;
 int replace_equiv_address (int ,int ) ;
 int simplify_gen_subreg (int ,int ,int,unsigned int) ;
 int strict_memory_address_p (int ,int ) ;
 int word_mode ;

rtx
operand_subword (rtx op, unsigned int offset, int validate_address, enum machine_mode mode)
{
  if (mode == VOIDmode)
    mode = GET_MODE (op);

  gcc_assert (mode != VOIDmode);


  if (mode != BLKmode
      && (GET_MODE_SIZE (mode) < UNITS_PER_WORD))
    return 0;


  if (mode != BLKmode
      && (offset + 1) * UNITS_PER_WORD > GET_MODE_SIZE (mode))
    return const0_rtx;


  if (MEM_P (op))
    {
      rtx new = adjust_address_nv (op, word_mode, offset * UNITS_PER_WORD);

      if (! validate_address)
 return new;

      else if (reload_completed)
 {
   if (! strict_memory_address_p (word_mode, XEXP (new, 0)))
     return 0;
 }
      else
 return replace_equiv_address (new, XEXP (new, 0));
    }


  return simplify_gen_subreg (word_mode, op, mode, (offset * UNITS_PER_WORD));
}
