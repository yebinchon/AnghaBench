
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ find_pc_partial_function (int ,char**,int *,int *) ;
 int read_register (int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

CORE_ADDR
arm_skip_stub (CORE_ADDR pc)
{
  char *name;
  CORE_ADDR start_addr;


  if (find_pc_partial_function (pc, &name, &start_addr, ((void*)0)) == 0)
    return 0;


  if (strncmp (name, "_call_via_", 10) == 0)
    {


      static char *table[15] =
      {"r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7",
       "r8", "r9", "sl", "fp", "ip", "sp", "lr"
      };
      int regno;

      for (regno = 0; regno <= 14; regno++)
 if (strcmp (&name[10], table[regno]) == 0)
   return read_register (regno);
    }

  return 0;
}
