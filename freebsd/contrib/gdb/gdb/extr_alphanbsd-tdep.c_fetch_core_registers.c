
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int ALPHA_ZERO_REGNUM ;
 int PC_REGNUM ;
 int SIZEOF_STRUCT_FPREG ;
 int SIZEOF_TRAPFRAME ;
 int alphabsd_supply_fpreg (char*,int) ;
 int supply_register (int,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
                      CORE_ADDR ignore)
{
  char *regs, *fpregs;
  int regno;


  static const int regmap[] =
  {
     0, 1, 2, 3,
     4, 5, 6, 7,
     8, 9, 10, 11,
    12, 13, 14, 15,
    30, 31, 32, 16,
    17, 18, 19, 20,
    21, 22, 23, 24,
    25, 29, 26
  };



  if (which != 0)
    return;

  regs = core_reg_sect;
  fpregs = core_reg_sect + (33 * 8);

  if (core_reg_size < ((33 * 8) + SIZEOF_STRUCT_FPREG))
    {
      warning ("Wrong size register set in core file.");
      return;
    }


  for (regno = 0; regno < ALPHA_ZERO_REGNUM; regno++)
    supply_register (regno, regs + (regmap[regno] * 8));
  supply_register (ALPHA_ZERO_REGNUM, ((void*)0));
  supply_register (PC_REGNUM, regs + (28 * 8));


  alphabsd_supply_fpreg (fpregs, -1);
}
