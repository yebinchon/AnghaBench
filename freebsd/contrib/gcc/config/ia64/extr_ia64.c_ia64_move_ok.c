
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_DOUBLE_OK_FOR_G (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ INTEGRAL_MODE_P (int ) ;
 scalar_t__ MEM ;
 int VOIDmode ;
 scalar_t__ const0_rtx ;
 scalar_t__ register_operand (scalar_t__,int ) ;

int
ia64_move_ok (rtx dst, rtx src)
{




  if (GET_CODE (dst) != MEM)
    return 1;
  if (GET_CODE (src) == MEM)
    return 0;
  if (register_operand (src, VOIDmode))
    return 1;


  if (INTEGRAL_MODE_P (GET_MODE (dst)))
    return src == const0_rtx;
  else
    return GET_CODE (src) == CONST_DOUBLE && CONST_DOUBLE_OK_FOR_G (src);
}
