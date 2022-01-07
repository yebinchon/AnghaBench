
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alpha_extra_func_info_t ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ alpha_mdebug_after_prologue (scalar_t__,int ) ;

__attribute__((used)) static int
alpha_mdebug_in_prologue (CORE_ADDR pc, alpha_extra_func_info_t proc_desc)
{
  CORE_ADDR after_prologue_pc = alpha_mdebug_after_prologue (pc, proc_desc);
  return (after_prologue_pc == 0 || pc < after_prologue_pc);
}
