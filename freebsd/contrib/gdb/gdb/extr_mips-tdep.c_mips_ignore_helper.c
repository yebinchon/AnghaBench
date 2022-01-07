
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ find_pc_partial_function (int ,char**,int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;

int
mips_ignore_helper (CORE_ADDR pc)
{
  char *name;


  if (find_pc_partial_function (pc, &name, ((void*)0), ((void*)0)) == 0)
    return 0;



  return (strcmp (name, "__mips16_ret_sf") == 0
   || strcmp (name, "__mips16_ret_df") == 0);
}
