
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ BLKmode ;
 scalar_t__ FLOAT_MODE_P (scalar_t__) ;
 scalar_t__ GET_MODE (int ) ;
 int MEM_P (int ) ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 scalar_t__ flag_float_store ;
 scalar_t__ flag_non_call_exceptions ;
 scalar_t__ may_trap_p (int ) ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 scalar_t__ side_effects_p (int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static int
simple_mem (rtx x)
{
  if (! MEM_P (x))
    return 0;

  if (MEM_VOLATILE_P (x))
    return 0;

  if (GET_MODE (x) == BLKmode)
    return 0;




  if (flag_non_call_exceptions && may_trap_p (x))
    return 0;

  if (side_effects_p (x))
    return 0;


  if (reg_mentioned_p (stack_pointer_rtx, x))
    return 0;

  if (flag_float_store && FLOAT_MODE_P (GET_MODE (x)))
    return 0;

  return 1;
}
