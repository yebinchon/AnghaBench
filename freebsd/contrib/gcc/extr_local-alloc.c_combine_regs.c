
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int size; int first_reg; size_t mode; int freq; int n_refs; int n_throwing_calls_crossed; int n_calls_crossed; int min_class; } ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int GET_MODE_SIZE (size_t) ;
 int MODES_TIEABLE_P (size_t,size_t) ;
 int REGMODE_NATURAL_SIZE (size_t) ;
 int REGNO (int ) ;
 int REG_DEAD ;
 scalar_t__ REG_FREQ (int) ;
 int REG_NO_CONFLICT ;
 scalar_t__ REG_N_CALLS_CROSSED (int) ;
 scalar_t__ REG_N_REFS (int) ;
 scalar_t__ REG_N_THROWING_CALLS_CROSSED (int) ;
 scalar_t__ REG_P (int ) ;
 int SET_HARD_REG_BIT (int ,int) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ current_function_has_nonlocal_label ;
 scalar_t__ find_reg_note (int ,int ,int ) ;
 scalar_t__ find_regno_note (int ,int ,int) ;
 int** hard_regno_nregs ;
 TYPE_1__* qty ;
 int * qty_phys_copy_sugg ;
 int * qty_phys_num_copy_sugg ;
 int * qty_phys_num_sugg ;
 int * qty_phys_sugg ;
 int reg_is_born (int ,int) ;
 scalar_t__ reg_meets_class_p (int,int ) ;
 int* reg_next_in_qty ;
 scalar_t__* reg_offset ;
 size_t* reg_qty ;
 scalar_t__ subreg_regno_offset (int,size_t,int,size_t) ;
 int update_qty_class (int,int) ;

__attribute__((used)) static int
combine_regs (rtx usedreg, rtx setreg, int may_save_copy, int insn_number,
       rtx insn, int already_dead)
{
  int ureg, sreg;
  int offset = 0;
  int usize, ssize;
  int sqty;





  while (GET_CODE (usedreg) == SUBREG)
    {
      rtx subreg = SUBREG_REG (usedreg);

      if (REG_P (subreg))
 {
   if (GET_MODE_SIZE (GET_MODE (subreg)) > UNITS_PER_WORD)
     may_save_copy = 0;

   if (REGNO (subreg) < FIRST_PSEUDO_REGISTER)
     offset += subreg_regno_offset (REGNO (subreg),
        GET_MODE (subreg),
        SUBREG_BYTE (usedreg),
        GET_MODE (usedreg));
   else
     offset += (SUBREG_BYTE (usedreg)
        / REGMODE_NATURAL_SIZE (GET_MODE (usedreg)));
 }

      usedreg = subreg;
    }

  if (!REG_P (usedreg))
    return 0;

  ureg = REGNO (usedreg);
  if (ureg < FIRST_PSEUDO_REGISTER)
    usize = hard_regno_nregs[ureg][GET_MODE (usedreg)];
  else
    usize = ((GET_MODE_SIZE (GET_MODE (usedreg))
       + (REGMODE_NATURAL_SIZE (GET_MODE (usedreg)) - 1))
      / REGMODE_NATURAL_SIZE (GET_MODE (usedreg)));

  while (GET_CODE (setreg) == SUBREG)
    {
      rtx subreg = SUBREG_REG (setreg);

      if (REG_P (subreg))
 {
   if (GET_MODE_SIZE (GET_MODE (subreg)) > UNITS_PER_WORD)
     may_save_copy = 0;

   if (REGNO (subreg) < FIRST_PSEUDO_REGISTER)
     offset -= subreg_regno_offset (REGNO (subreg),
        GET_MODE (subreg),
        SUBREG_BYTE (setreg),
        GET_MODE (setreg));
   else
     offset -= (SUBREG_BYTE (setreg)
        / REGMODE_NATURAL_SIZE (GET_MODE (setreg)));
 }

      setreg = subreg;
    }

  if (!REG_P (setreg))
    return 0;

  sreg = REGNO (setreg);
  if (sreg < FIRST_PSEUDO_REGISTER)
    ssize = hard_regno_nregs[sreg][GET_MODE (setreg)];
  else
    ssize = ((GET_MODE_SIZE (GET_MODE (setreg))
       + (REGMODE_NATURAL_SIZE (GET_MODE (setreg)) - 1))
      / REGMODE_NATURAL_SIZE (GET_MODE (setreg)));




  if ((ureg >= FIRST_PSEUDO_REGISTER && reg_qty[ureg] < 0)

      || (offset > 0 && usize + offset > ssize)
      || (offset < 0 && usize + offset < ssize)


      || (ssize > usize && ureg >= FIRST_PSEUDO_REGISTER
   && usize < qty[reg_qty[ureg]].size)

      || (sreg >= FIRST_PSEUDO_REGISTER && reg_qty[sreg] == -1)



      || (ureg >= FIRST_PSEUDO_REGISTER
   && find_reg_note (insn, REG_NO_CONFLICT, usedreg))



      || ureg == sreg

      || (ureg < FIRST_PSEUDO_REGISTER && sreg < FIRST_PSEUDO_REGISTER)


      || !MODES_TIEABLE_P (GET_MODE (usedreg), GET_MODE (setreg)))
    return 0;
  if (ureg < FIRST_PSEUDO_REGISTER)
    {


      if (reg_qty[sreg] == -2)
 reg_is_born (setreg, 2 * insn_number);

      if (reg_qty[sreg] >= 0)
 {
   if (may_save_copy
       && ! TEST_HARD_REG_BIT (qty_phys_copy_sugg[reg_qty[sreg]], ureg))
     {
       SET_HARD_REG_BIT (qty_phys_copy_sugg[reg_qty[sreg]], ureg);
       qty_phys_num_copy_sugg[reg_qty[sreg]]++;
     }
   else if (! TEST_HARD_REG_BIT (qty_phys_sugg[reg_qty[sreg]], ureg))
     {
       SET_HARD_REG_BIT (qty_phys_sugg[reg_qty[sreg]], ureg);
       qty_phys_num_sugg[reg_qty[sreg]]++;
     }
 }
      return 0;
    }



  if (sreg < FIRST_PSEUDO_REGISTER)
    {
      if (may_save_copy
   && ! TEST_HARD_REG_BIT (qty_phys_copy_sugg[reg_qty[ureg]], sreg))
 {
   SET_HARD_REG_BIT (qty_phys_copy_sugg[reg_qty[ureg]], sreg);
   qty_phys_num_copy_sugg[reg_qty[ureg]]++;
 }
      else if (! TEST_HARD_REG_BIT (qty_phys_sugg[reg_qty[ureg]], sreg))
 {
   SET_HARD_REG_BIT (qty_phys_sugg[reg_qty[ureg]], sreg);
   qty_phys_num_sugg[reg_qty[ureg]]++;
 }
      return 0;
    }




  if (reg_qty[sreg] >= -1


      || (current_function_has_nonlocal_label
   && ((REG_N_CALLS_CROSSED (ureg) > 0)
       != (REG_N_CALLS_CROSSED (sreg) > 0))))
    return 0;





  if ((already_dead || find_regno_note (insn, REG_DEAD, ureg))
      && reg_meets_class_p (sreg, qty[reg_qty[ureg]].min_class))
    {

      sqty = reg_qty[ureg];
      reg_qty[sreg] = sqty;
      reg_offset[sreg] = reg_offset[ureg] + offset;
      reg_next_in_qty[sreg] = qty[sqty].first_reg;
      qty[sqty].first_reg = sreg;


      update_qty_class (sqty, sreg);


      qty[sqty].n_calls_crossed += REG_N_CALLS_CROSSED (sreg);
      qty[sqty].n_throwing_calls_crossed
 += REG_N_THROWING_CALLS_CROSSED (sreg);
      qty[sqty].n_refs += REG_N_REFS (sreg);
      qty[sqty].freq += REG_FREQ (sreg);
      if (usize < ssize)
 {
   int i;

   for (i = qty[sqty].first_reg; i >= 0; i = reg_next_in_qty[i])
     reg_offset[i] -= offset;

   qty[sqty].size = ssize;
   qty[sqty].mode = GET_MODE (setreg);
 }
    }
  else
    return 0;

  return 1;
}
