
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 unsigned int extract_unsigned_integer (char*,int) ;
 int target_read_memory (int,char*,int) ;

__attribute__((used)) static unsigned int
fetch_mips_16 (CORE_ADDR pc)
{
  char buf[8];
  pc &= 0xfffffffe;
  target_read_memory (pc, buf, 2);
  return extract_unsigned_integer (buf, 2);
}
