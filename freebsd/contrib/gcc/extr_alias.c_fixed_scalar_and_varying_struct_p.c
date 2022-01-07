
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ MEM_IN_STRUCT_P (int ) ;
 scalar_t__ MEM_SCALAR_P (int ) ;
 int NULL_RTX ;
 int flag_strict_aliasing ;

__attribute__((used)) static rtx
fixed_scalar_and_varying_struct_p (rtx mem1, rtx mem2, rtx mem1_addr,
       rtx mem2_addr,
       int (*varies_p) (rtx, int))
{
  if (! flag_strict_aliasing)
    return NULL_RTX;

  if (MEM_SCALAR_P (mem1) && MEM_IN_STRUCT_P (mem2)
      && !varies_p (mem1_addr, 1) && varies_p (mem2_addr, 1))


    return mem1;

  if (MEM_IN_STRUCT_P (mem1) && MEM_SCALAR_P (mem2)
      && varies_p (mem1_addr, 1) && !varies_p (mem2_addr, 1))


    return mem2;

  return NULL_RTX;
}
