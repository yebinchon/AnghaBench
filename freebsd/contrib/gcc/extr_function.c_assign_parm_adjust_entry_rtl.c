
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assign_parm_data_one {int partial; scalar_t__ nominal_mode; scalar_t__ passed_mode; int * entry_parm; int passed_type; int * stack_parm; } ;
typedef int * rtx ;


 scalar_t__ BLKmode ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 int REGNO (int *) ;
 scalar_t__ REG_P (scalar_t__) ;
 int UNITS_PER_WORD ;
 scalar_t__ XEXP (int ,int) ;
 int XVECEXP (int *,int ,size_t) ;
 size_t XVECLEN (int *,int ) ;
 int emit_group_store (int ,int *,int ,int ) ;
 int gcc_assert (int) ;
 int int_size_in_bytes (int ) ;
 int move_block_from_reg (int ,int ,int) ;
 int validize_mem (int *) ;

__attribute__((used)) static void
assign_parm_adjust_entry_rtl (struct assign_parm_data_one *data)
{
  rtx entry_parm = data->entry_parm;
  rtx stack_parm = data->stack_parm;






  if (data->partial != 0)
    {


      if (GET_CODE (entry_parm) == PARALLEL)
 emit_group_store (validize_mem (stack_parm), entry_parm,
     data->passed_type,
     int_size_in_bytes (data->passed_type));
      else
 {
   gcc_assert (data->partial % UNITS_PER_WORD == 0);
   move_block_from_reg (REGNO (entry_parm), validize_mem (stack_parm),
          data->partial / UNITS_PER_WORD);
 }

      entry_parm = stack_parm;
    }



  else if (entry_parm == ((void*)0))
    entry_parm = stack_parm;




  else if (GET_CODE (entry_parm) == PARALLEL
    && data->nominal_mode != BLKmode
    && data->passed_mode != BLKmode)
    {
      size_t i, len = XVECLEN (entry_parm, 0);

      for (i = 0; i < len; i++)
 if (XEXP (XVECEXP (entry_parm, 0, i), 0) != NULL_RTX
     && REG_P (XEXP (XVECEXP (entry_parm, 0, i), 0))
     && (GET_MODE (XEXP (XVECEXP (entry_parm, 0, i), 0))
  == data->passed_mode)
     && INTVAL (XEXP (XVECEXP (entry_parm, 0, i), 1)) == 0)
   {
     entry_parm = XEXP (XVECEXP (entry_parm, 0, i), 0);
     break;
   }
    }

  data->entry_parm = entry_parm;
}
