
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int CORE_ADDR ;


 int DEPRECATED_FP_REGNUM ;
 scalar_t__ KERNEL_U_ADDR ;
 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;
 int REGISTER_NAME (int) ;
 int ZERO_REGNUM ;
 int error (char*,...) ;
 int memset (char*,int ,int) ;
 unsigned int reg_ptr ;
 unsigned int register_addr (int,unsigned int) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
        CORE_ADDR reg_addr)
{
  int regno;
  unsigned int addr;
  int bad_reg = -1;
  reg_ptr = -reg_addr;

  char zerobuf[MAX_REGISTER_SIZE];
  memset (zerobuf, 0, MAX_REGISTER_SIZE);
  if (reg_ptr > core_reg_size)



    error ("Old mips core file can't be processed on this machine.");


  for (regno = 0; regno < NUM_REGS; regno++)
    {
      addr = register_addr (regno, reg_ptr);
      if (addr >= core_reg_size)
 {
   if (bad_reg < 0)
     bad_reg = regno;
 }
      else
 {
   supply_register (regno, core_reg_sect + addr);
 }
    }
  if (bad_reg >= 0)
    {
      error ("Register %s not found in core file.", REGISTER_NAME (bad_reg));
    }
  supply_register (ZERO_REGNUM, zerobuf);

  supply_register (DEPRECATED_FP_REGNUM, zerobuf);
}
