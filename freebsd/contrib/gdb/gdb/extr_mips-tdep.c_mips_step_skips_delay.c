
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int MIPS_INSTLEN ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 int is_delayed (unsigned long) ;
 scalar_t__ pc_is_mips16 (int ) ;
 scalar_t__ target_read_memory (int ,char*,int) ;

int
mips_step_skips_delay (CORE_ADDR pc)
{
  char buf[MIPS_INSTLEN];


  if (pc_is_mips16 (pc))
    return 0;

  if (target_read_memory (pc, buf, MIPS_INSTLEN) != 0)

    return 0;
  return is_delayed ((unsigned long)
       extract_unsigned_integer (buf, MIPS_INSTLEN));
}
