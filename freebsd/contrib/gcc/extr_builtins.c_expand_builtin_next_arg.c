
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int Pmode ;
 int add_optab ;
 int current_function_arg_offset_rtx ;
 int current_function_internal_arg_pointer ;
 int expand_binop (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_next_arg (void)
{


  return expand_binop (Pmode, add_optab,
         current_function_internal_arg_pointer,
         current_function_arg_offset_rtx,
         NULL_RTX, 0, OPTAB_LIB_WIDEN);
}
