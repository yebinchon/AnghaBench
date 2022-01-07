
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ MIPS_FBSD_SIGTRAMP_STACK_MOD_END ;
 scalar_t__ MIPS_FBSD_SIGTRAMP_STACK_MOD_START ;

__attribute__((used)) static int
is_sigtramp_sp_modified (CORE_ADDR pc)
{
  return (pc >= MIPS_FBSD_SIGTRAMP_STACK_MOD_START &&
          pc <= MIPS_FBSD_SIGTRAMP_STACK_MOD_END);
}
