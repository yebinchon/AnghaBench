
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MEM ;
 int Pmode ;
 scalar_t__ REG ;
 size_t REGNO (int ) ;
 scalar_t__ TARGET_ARCH64 ;
 int XEXP (int ,int ) ;
 int const_zero_operand (int ,int ) ;
 int fp_high_losum_p (int ) ;
 int fp_mov_p (int ) ;
 int fp_sethi_p (int ) ;
 scalar_t__ mem_min_alignment (int ,int) ;
 scalar_t__* reg_renumber ;
 int register_ok_for_ldd (int ) ;
 scalar_t__ reload_in_progress ;
 scalar_t__ strict_memory_address_p (int ,int ) ;

int
sparc_extra_constraint_check (rtx op, int c, int strict)
{
  int reload_ok_mem;

  if (TARGET_ARCH64
      && (c == 'T' || c == 'U'))
    return 0;

  switch (c)
    {
    case 'Q':
      return fp_sethi_p (op);

    case 'R':
      return fp_mov_p (op);

    case 'S':
      return fp_high_losum_p (op);

    case 'U':
      if (! strict
   || (GET_CODE (op) == REG
       && (REGNO (op) < FIRST_PSEUDO_REGISTER
    || reg_renumber[REGNO (op)] >= 0)))
 return register_ok_for_ldd (op);

      return 0;

    case 'W':
    case 'T':
      break;

    case 'Y':
      return const_zero_operand (op, GET_MODE (op));

    default:
      return 0;
    }




  if (GET_CODE (op) == MEM)
    {
      reload_ok_mem = 0;
      if ((TARGET_ARCH64 || mem_min_alignment (op, 8))
   && (! strict
       || strict_memory_address_p (Pmode, XEXP (op, 0))))
 reload_ok_mem = 1;
    }
  else
    {
      reload_ok_mem = (reload_in_progress
         && GET_CODE (op) == REG
         && REGNO (op) >= FIRST_PSEUDO_REGISTER
         && reg_renumber [REGNO (op)] < 0);
    }

  return reload_ok_mem;
}
