
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int CORE_ADDR ;


 unsigned int CORE_REGISTER_ADDR (int,unsigned int) ;
 unsigned int KERNEL_U_ADDR ;
 int NUM_REGS ;
 int REGISTER_NAME (int) ;
 int error (char*,int ) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
        CORE_ADDR reg_addr)
{
  int regno;
  CORE_ADDR addr;
  int bad_reg = -1;
  CORE_ADDR reg_ptr = -reg_addr;
  int numregs = NUM_REGS;







  if (reg_ptr > core_reg_size)
    reg_ptr -= KERNEL_U_ADDR;

  for (regno = 0; regno < numregs; regno++)
    {
      addr = CORE_REGISTER_ADDR (regno, reg_ptr);
      if (addr >= core_reg_size
   && bad_reg < 0)
 bad_reg = regno;
      else
 supply_register (regno, core_reg_sect + addr);
    }

  if (bad_reg >= 0)
    error ("Register %s not found in core file.", REGISTER_NAME (bad_reg));
}
