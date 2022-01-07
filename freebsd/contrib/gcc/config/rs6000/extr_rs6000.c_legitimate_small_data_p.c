
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ABI_V4 ;
 scalar_t__ CONST ;
 scalar_t__ DEFAULT_ABI ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SYMBOL_REF ;
 int TARGET_TOC ;
 int flag_pic ;
 scalar_t__ small_data_operand (int ,int) ;

__attribute__((used)) static bool
legitimate_small_data_p (enum machine_mode mode, rtx x)
{
  return (DEFAULT_ABI == ABI_V4
   && !flag_pic && !TARGET_TOC
   && (GET_CODE (x) == SYMBOL_REF || GET_CODE (x) == CONST)
   && small_data_operand (x, mode));
}
