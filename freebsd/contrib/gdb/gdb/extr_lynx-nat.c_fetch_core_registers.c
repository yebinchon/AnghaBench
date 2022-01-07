
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_entry {int dummy; } ;
typedef int CORE_ADDR ;


 int I0_REGNUM ;
 unsigned int NUM_REGS ;
 int ec ;
 int fetch_inferior_registers (int ) ;
 int offsetof (int ,int ) ;
 int* regmap ;
 int st_t ;
 int supply_register (unsigned int,char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
        CORE_ADDR reg_addr)
{
  struct st_entry s;
  unsigned int regno;

  for (regno = 0; regno < NUM_REGS; regno++)
    if (regmap[regno] != -1)
      supply_register (regno, core_reg_sect + offsetof (st_t, ec)
         + regmap[regno]);







}
