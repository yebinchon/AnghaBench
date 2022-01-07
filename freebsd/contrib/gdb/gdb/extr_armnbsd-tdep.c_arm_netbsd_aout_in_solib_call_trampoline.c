
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
arm_netbsd_aout_in_solib_call_trampoline (CORE_ADDR pc, char *name)
{
  if (strcmp (name, "_PROCEDURE_LINKAGE_TABLE_") == 0)
    return 1;

  return 0;
}
