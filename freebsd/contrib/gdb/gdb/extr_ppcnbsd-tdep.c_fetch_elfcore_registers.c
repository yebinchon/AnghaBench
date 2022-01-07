
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 unsigned int SIZEOF_STRUCT_FPREG ;
 unsigned int SIZEOF_STRUCT_REG ;
 int ppcnbsd_supply_fpreg (char*,int) ;
 int ppcnbsd_supply_reg (char*,int) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_elfcore_registers (char *core_reg_sect, unsigned core_reg_size, int which,
                         CORE_ADDR ignore)
{
  switch (which)
    {
    case 0:
      if (core_reg_size != SIZEOF_STRUCT_REG)
 warning ("Wrong size register set in core file.");
      else
 ppcnbsd_supply_reg (core_reg_sect, -1);
      break;

    case 2:
      if (core_reg_size != SIZEOF_STRUCT_FPREG)
 warning ("Wrong size FP register set in core file.");
      else
 ppcnbsd_supply_fpreg (core_reg_sect, -1);
      break;

    default:

      break;
    }
}
