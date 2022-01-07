
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BITS_PER_UNIT ;
 scalar_t__ CONSTANT_ADDRESS_P (scalar_t__) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int LEGITIMIZE_ADDRESS (scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ MINUS ;
 scalar_t__ MULT ;
 int NULL_RTX ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ break_out_memory_refs (scalar_t__) ;
 scalar_t__ const0_rtx ;
 scalar_t__ convert_memory_address (int ,scalar_t__) ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 int cse_not_expected ;
 scalar_t__ eliminate_constant_term (scalar_t__,scalar_t__*) ;
 scalar_t__ flag_force_addr ;
 scalar_t__ force_operand (scalar_t__,int ) ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 int mark_reg_pointer (scalar_t__,int ) ;
 scalar_t__ memory_address_p (int,scalar_t__) ;
 int update_temp_slot_address (scalar_t__,scalar_t__) ;
 int win ;

rtx
memory_address (enum machine_mode mode, rtx x)
{
  rtx oldx = x;

  x = convert_memory_address (Pmode, x);



  if (! cse_not_expected && CONSTANT_P (x) && CONSTANT_ADDRESS_P (x))
    x = force_reg (Pmode, x);





  else
    {
      if (! cse_not_expected && !REG_P (x))
 x = break_out_memory_refs (x);


      if (memory_address_p (mode, x))
 goto win;



      if (memory_address_p (mode, oldx))
 goto win2;





      LEGITIMIZE_ADDRESS (x, oldx, mode, win);
      if (GET_CODE (x) == PLUS)
 {
   rtx constant_term = const0_rtx;
   rtx y = eliminate_constant_term (x, &constant_term);
   if (constant_term == const0_rtx
       || ! memory_address_p (mode, y))
     x = force_operand (x, NULL_RTX);
   else
     {
       y = gen_rtx_PLUS (GET_MODE (x), copy_to_reg (y), constant_term);
       if (! memory_address_p (mode, y))
  x = force_operand (x, NULL_RTX);
       else
  x = y;
     }
 }

      else if (GET_CODE (x) == MULT || GET_CODE (x) == MINUS)
 x = force_operand (x, NULL_RTX);



      else if (REG_P (x))
 x = copy_to_reg (x);



      else
 x = force_reg (Pmode, x);

      goto done;

    win2:
      x = oldx;
    win:
      if (flag_force_addr && ! cse_not_expected && !REG_P (x))
 {
   x = force_operand (x, NULL_RTX);
   x = force_reg (Pmode, x);
 }
    }

 done:



  if (oldx == x)
    return x;
  else if (REG_P (x))
    mark_reg_pointer (x, BITS_PER_UNIT);
  else if (GET_CODE (x) == PLUS
    && REG_P (XEXP (x, 0))
    && GET_CODE (XEXP (x, 1)) == CONST_INT)
    mark_reg_pointer (XEXP (x, 0), BITS_PER_UNIT);



  update_temp_slot_address (oldx, x);

  return x;
}
