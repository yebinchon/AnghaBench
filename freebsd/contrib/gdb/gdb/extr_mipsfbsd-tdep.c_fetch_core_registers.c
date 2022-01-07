
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int SIZEOF_STRUCT_REG ;
 int mipsfbsd_supply_fpreg (char*,int) ;
 int mipsfbsd_supply_reg (char*,int) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
                      CORE_ADDR ignore)
{
  char *regs, *fpregs;


  if (which != 0)
    return;

  regs = core_reg_sect;
  fpregs = core_reg_sect + SIZEOF_STRUCT_REG;


  mipsfbsd_supply_reg (regs, -1);


  mipsfbsd_supply_fpreg (fpregs, -1);
}
