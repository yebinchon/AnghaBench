
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RFKILL_GLOBAL_OP_EPO ;
 int rfkill_master_switch_op ;
 int rfkill_schedule_global_op (int ) ;

__attribute__((used)) static void rfkill_schedule_evsw_rfkillall(int state)
{
 if (state)
  rfkill_schedule_global_op(rfkill_master_switch_op);
 else
  rfkill_schedule_global_op(RFKILL_GLOBAL_OP_EPO);
}
