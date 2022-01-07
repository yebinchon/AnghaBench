
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int mips16_next_pc (int) ;
 int mips32_next_pc (int) ;

CORE_ADDR
mips_next_pc (CORE_ADDR pc)
{
  if (pc & 0x01)
    return mips16_next_pc (pc);
  else
    return mips32_next_pc (pc);
}
