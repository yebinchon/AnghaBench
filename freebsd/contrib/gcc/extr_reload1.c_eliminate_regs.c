
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int eliminate_regs_1 (int ,int,int ,int) ;

rtx
eliminate_regs (rtx x, enum machine_mode mem_mode, rtx insn)
{
  return eliminate_regs_1 (x, mem_mode, insn, 0);
}
