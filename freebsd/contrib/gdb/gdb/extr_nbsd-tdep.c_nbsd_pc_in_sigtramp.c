
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ strncmp (char*,char*,int) ;

int
nbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{



  return (func_name != ((void*)0)
   && strncmp (func_name, "__sigtramp", 10) == 0);
}
