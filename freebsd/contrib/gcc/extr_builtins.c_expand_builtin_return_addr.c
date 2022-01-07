
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int BUILT_IN_FRAME_ADDRESS ;
 int BUILT_IN_RETURN_ADDRESS ;
 int DYNAMIC_CHAIN_ADDRESS (int ) ;
 int FRAME_ADDR_RTX (int ) ;
 int GET_MODE_SIZE (int ) ;
 int INITIAL_FRAME_ADDRESS_RTX ;
 int Pmode ;
 int RETURN_ADDR_RTX (int,int ) ;
 int SETUP_FRAME_ADDRESSES () ;
 int copy_to_reg (int ) ;
 int current_function_accesses_prior_frames ;
 int frame_pointer_rtx ;
 int gen_frame_mem (int ,int ) ;
 int hard_frame_pointer_rtx ;
 int memory_address (int ,int ) ;
 int plus_constant (int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_return_addr (enum built_in_function fndecl_code, int count)
{
  int i;




  rtx tem;
  if (count == 0 && fndecl_code == BUILT_IN_RETURN_ADDRESS)
    tem = frame_pointer_rtx;
  else
    {
      tem = hard_frame_pointer_rtx;


      current_function_accesses_prior_frames = 1;
    }
  for (i = 0; i < count; i++)
    {





      tem = memory_address (Pmode, tem);
      tem = gen_frame_mem (Pmode, tem);
      tem = copy_to_reg (tem);
    }



  if (fndecl_code == BUILT_IN_FRAME_ADDRESS)



    return tem;






  tem = memory_address (Pmode,
   plus_constant (tem, GET_MODE_SIZE (Pmode)));
  tem = gen_frame_mem (Pmode, tem);

  return tem;
}
