
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int A0_REGNUM ;
 int JB_ELEMENT_SIZE ;
 int TARGET_CHAR_BIT ;
 int TARGET_PTR_BIT ;
 int _JB_PC ;
 char* alloca (int) ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 scalar_t__ read_register (int ) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;

int
get_longjmp_target (CORE_ADDR *pc)
{
  char *buf;
  CORE_ADDR jb_addr;

  buf = alloca (TARGET_PTR_BIT / TARGET_CHAR_BIT);
  jb_addr = read_register (A0_REGNUM);

  if (target_read_memory (jb_addr + _JB_PC * JB_ELEMENT_SIZE, buf,
     TARGET_PTR_BIT / TARGET_CHAR_BIT))
    return 0;

  *pc = extract_unsigned_integer (buf, TARGET_PTR_BIT / TARGET_CHAR_BIT);

  return 1;
}
