
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MTP_AFTER_MOVE ;
 int may_trap_p_1 (int ,int ) ;

int
may_trap_after_code_motion_p (rtx x)
{
  return may_trap_p_1 (x, MTP_AFTER_MOVE);
}
