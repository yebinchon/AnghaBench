
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regset ;
typedef int nto_regset_t ;
typedef int CORE_ADDR ;


 int memcpy (char*,char*,int ) ;
 int min (unsigned int,int) ;
 int nto_supply_fpregset (char*) ;
 int nto_supply_gregset (char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size,
        int which, CORE_ADDR reg_addr)
{
  nto_regset_t regset;


  if (which == 0)
    {
      memcpy ((char *) &regset, core_reg_sect,
       min (core_reg_size, sizeof (regset)));
      nto_supply_gregset ((char *) &regset);
    }
  else if (which == 2)
    {
      memcpy ((char *) &regset, core_reg_sect,
       min (core_reg_size, sizeof (regset)));
      nto_supply_fpregset ((char *) &regset);
    }
}
