
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int alpha_supply_fp_regs (int,char*,char*) ;
 int alpha_supply_int_regs (int,char*,char*,char*) ;
 int error (char*,unsigned int) ;

__attribute__((used)) static void
fetch_elf_core_registers (char *core_reg_sect, unsigned core_reg_size,
     int which, CORE_ADDR reg_addr)
{
  if (core_reg_size < 32 * 8)
    {
      error ("Core file register section too small (%u bytes).", core_reg_size);
      return;
    }

  switch (which)
    {
    case 0:

      alpha_supply_int_regs (-1, core_reg_sect, core_reg_sect + 31*8,
        (core_reg_size >= 33 * 8
         ? core_reg_sect + 32*8 : ((void*)0)));
      break;

    case 2:

      alpha_supply_fp_regs (-1, core_reg_sect, core_reg_sect + 31*8);
      break;

    default:
      break;
    }
}
