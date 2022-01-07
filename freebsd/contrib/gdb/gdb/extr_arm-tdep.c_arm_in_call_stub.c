
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ find_pc_partial_function (int ,char**,int *,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
arm_in_call_stub (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_addr;



  if (0 == find_pc_partial_function (pc, name ? ((void*)0) : &name,
         &start_addr, ((void*)0)))
    return 0;

  return strncmp (name, "_call_via_r", 11) == 0;
}
