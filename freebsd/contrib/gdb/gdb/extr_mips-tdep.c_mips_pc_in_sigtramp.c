
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int fixup_sigtramp () ;
 scalar_t__ sigtramp_address ;
 scalar_t__ sigtramp_end ;

__attribute__((used)) static int
mips_pc_in_sigtramp (CORE_ADDR pc, char *ignore)
{
  if (sigtramp_address == 0)
    fixup_sigtramp ();
  return (pc >= sigtramp_address && pc < sigtramp_end);
}
