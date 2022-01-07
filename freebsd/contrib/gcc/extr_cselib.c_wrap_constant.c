
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ VOIDmode ;
 int gcc_assert (int) ;
 int gen_rtx_CONST (int,int ) ;

__attribute__((used)) static rtx
wrap_constant (enum machine_mode mode, rtx x)
{
  if (GET_CODE (x) != CONST_INT
      && (GET_CODE (x) != CONST_DOUBLE || GET_MODE (x) != VOIDmode))
    return x;
  gcc_assert (mode != VOIDmode);
  return gen_rtx_CONST (mode, x);
}
