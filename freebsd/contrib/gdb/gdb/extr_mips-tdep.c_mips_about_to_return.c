
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int mips_fetch_instruction (int ) ;
 scalar_t__ pc_is_mips16 (int ) ;

__attribute__((used)) static int
mips_about_to_return (CORE_ADDR pc)
{
  if (pc_is_mips16 (pc))






    return mips_fetch_instruction (pc) == 0xe820;
  else
    return mips_fetch_instruction (pc) == 0x3e00008;
}
