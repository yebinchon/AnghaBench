
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DECL_MODE (int ) ;
 int DECL_RESULT (int ) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 int current_function_decl ;
 scalar_t__ current_function_return_rtx ;

__attribute__((used)) static int
arm_size_return_regs (void)
{
  enum machine_mode mode;

  if (current_function_return_rtx != 0)
    mode = GET_MODE (current_function_return_rtx);
  else
    mode = DECL_MODE (DECL_RESULT (current_function_decl));

  return GET_MODE_SIZE (mode);
}
