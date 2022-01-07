
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int GET_MODE_SIZE (size_t) ;
 int HARD_REGNO_MODE_OK (int ,int) ;
 scalar_t__ PLUS ;
 size_t REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__** hard_regno_nregs ;
 int subreg_regno (int ) ;

__attribute__((used)) static int
reload_inner_reg_of_subreg (rtx x, enum machine_mode mode, int output)
{
  rtx inner;


  if (GET_CODE (x) != SUBREG)
    return 0;

  inner = SUBREG_REG (x);


  if (CONSTANT_P (inner) || GET_CODE (inner) == PLUS)
    return 1;



  if (!REG_P (inner)
      || REGNO (inner) >= FIRST_PSEUDO_REGISTER)
    return 0;


  if (! HARD_REGNO_MODE_OK (subreg_regno (x), mode))
    return 1;




  return (GET_MODE_SIZE (mode) <= UNITS_PER_WORD
   && output
   && GET_MODE_SIZE (GET_MODE (inner)) > UNITS_PER_WORD
   && ((GET_MODE_SIZE (GET_MODE (inner)) / UNITS_PER_WORD)
       != (int) hard_regno_nregs[REGNO (inner)][GET_MODE (inner)]));
}
