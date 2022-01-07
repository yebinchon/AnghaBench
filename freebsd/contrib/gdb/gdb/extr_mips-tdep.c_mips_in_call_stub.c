
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ find_pc_partial_function (scalar_t__,char**,scalar_t__*,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
mips_in_call_stub (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_addr;



  if (find_pc_partial_function (pc, name ? ((void*)0) : &name, &start_addr, ((void*)0)) ==
      0)
    return 0;

  if (strncmp (name, "__mips16_call_stub_", 19) == 0)
    {

      if (name[19] >= '0' && name[19] <= '9')
 return 1;


      else if (name[19] == 's' || name[19] == 'd')
 return pc == start_addr;
    }

  return 0;
}
