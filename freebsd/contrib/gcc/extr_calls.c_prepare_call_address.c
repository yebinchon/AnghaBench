
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int FUNCTION_MODE ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int Pmode ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SMALL_REGISTER_CLASSES ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ convert_memory_address (int ,scalar_t__) ;
 int emit_move_insn (int ,scalar_t__) ;
 int flag_no_function_cse ;
 scalar_t__ force_not_mem (scalar_t__) ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 scalar_t__ memory_address (int ,scalar_t__) ;
 scalar_t__ optimize ;
 int static_chain_rtx ;
 int use_reg (scalar_t__*,int ) ;

rtx
prepare_call_address (rtx funexp, rtx static_chain_value,
        rtx *call_fusage, int reg_parm_seen, int sibcallp)
{


  if (GET_CODE (funexp) != SYMBOL_REF)


    funexp = ((SMALL_REGISTER_CLASSES && reg_parm_seen)
       ? force_not_mem (memory_address (FUNCTION_MODE, funexp))
       : memory_address (FUNCTION_MODE, funexp));
  else if (! sibcallp)
    {

      if (optimize && ! flag_no_function_cse)
 funexp = force_reg (Pmode, funexp);

    }

  if (static_chain_value != 0)
    {
      static_chain_value = convert_memory_address (Pmode, static_chain_value);
      emit_move_insn (static_chain_rtx, static_chain_value);

      if (REG_P (static_chain_rtx))
 use_reg (call_fusage, static_chain_rtx);
    }

  return funexp;
}
