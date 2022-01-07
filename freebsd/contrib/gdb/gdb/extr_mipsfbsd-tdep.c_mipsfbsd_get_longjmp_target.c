
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int A0_REGNUM ;
 int FBSD_MIPS_JB_ELEMENT_SIZE ;
 scalar_t__ FBSD_MIPS_JB_OFFSET ;
 char* alloca (int ) ;
 scalar_t__ extract_unsigned_integer (char*,int ) ;
 scalar_t__ read_register (int ) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int ) ;

__attribute__((used)) static int
mipsfbsd_get_longjmp_target (CORE_ADDR *pc)
{
  CORE_ADDR jb_addr;
  char *buf;

  buf = alloca (FBSD_MIPS_JB_ELEMENT_SIZE);

  jb_addr = read_register (A0_REGNUM);

  if (target_read_memory (jb_addr + FBSD_MIPS_JB_OFFSET, buf,
       FBSD_MIPS_JB_ELEMENT_SIZE))
    return 0;

  *pc = extract_unsigned_integer (buf, FBSD_MIPS_JB_ELEMENT_SIZE);

  return 1;
}
