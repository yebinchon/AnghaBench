
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEGACY_SIM_REGNO_IGNORE ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int gdb_assert (int) ;

int
legacy_register_sim_regno (int regnum)
{

  gdb_assert (regnum >= 0 && regnum < NUM_REGS);




  if (REGISTER_NAME (regnum) != ((void*)0)
      && REGISTER_NAME (regnum)[0] != '\0')
    return regnum;
  else
    return LEGACY_SIM_REGNO_IGNORE;
}
