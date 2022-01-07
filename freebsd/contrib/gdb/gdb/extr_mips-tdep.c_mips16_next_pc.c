
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int extended_mips16_next_pc (int ,int ,unsigned int) ;
 unsigned int fetch_mips_16 (int ) ;

__attribute__((used)) static CORE_ADDR
mips16_next_pc (CORE_ADDR pc)
{
  unsigned int insn = fetch_mips_16 (pc);
  return extended_mips16_next_pc (pc, 0, insn);
}
