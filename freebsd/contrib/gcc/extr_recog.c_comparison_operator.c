
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ COMPARISON_P (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;

int
comparison_operator (rtx op, enum machine_mode mode)
{
  return ((mode == VOIDmode || GET_MODE (op) == mode)
   && COMPARISON_P (op));
}
