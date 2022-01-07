
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int VOIDmode ;
 int rtx_addr_can_trap_p_1 (int ,int ,int) ;

int
rtx_addr_can_trap_p (rtx x)
{
  return rtx_addr_can_trap_p_1 (x, VOIDmode, 0);
}
