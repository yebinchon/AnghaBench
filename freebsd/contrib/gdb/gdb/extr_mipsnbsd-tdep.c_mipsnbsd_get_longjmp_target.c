
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int A0_REGNUM ;
 int NBSD_MIPS_JB_ELEMENT_SIZE ;
 scalar_t__ NBSD_MIPS_JB_OFFSET ;
 char* alloca (int ) ;
 scalar_t__ extract_unsigned_integer (char*,int ) ;
 scalar_t__ read_register (int ) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int ) ;

__attribute__((used)) static int
mipsnbsd_get_longjmp_target (CORE_ADDR *pc)
{
  CORE_ADDR jb_addr;
  char *buf;

  buf = alloca (NBSD_MIPS_JB_ELEMENT_SIZE);

  jb_addr = read_register (A0_REGNUM);

  if (target_read_memory (jb_addr + NBSD_MIPS_JB_OFFSET, buf,
       NBSD_MIPS_JB_ELEMENT_SIZE))
    return 0;

  *pc = extract_unsigned_integer (buf, NBSD_MIPS_JB_ELEMENT_SIZE);

  return 1;
}
