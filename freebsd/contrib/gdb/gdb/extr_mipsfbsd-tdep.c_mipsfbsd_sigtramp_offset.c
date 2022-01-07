
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ MIPS_FBSD_SIGTRAMP_END ;
 scalar_t__ MIPS_FBSD_SIGTRAMP_START ;

__attribute__((used)) static LONGEST
mipsfbsd_sigtramp_offset (CORE_ADDR pc)
{
  return pc < MIPS_FBSD_SIGTRAMP_END &&
         pc >= MIPS_FBSD_SIGTRAMP_START ? 1 : -1;
}
