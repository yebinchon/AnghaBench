
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int MIPS_INSTLEN ;
 int extract_unsigned_integer (char*,int) ;
 int memory_error (int,int ) ;
 int read_memory_nobpt (int ,char*,int) ;

__attribute__((used)) static ULONGEST
mips32_fetch_instruction (CORE_ADDR addr)
{
  char buf[MIPS_INSTLEN];
  int instlen;
  int status;
  instlen = MIPS_INSTLEN;
  status = read_memory_nobpt (addr, buf, instlen);
  if (status)
    memory_error (status, addr);
  return extract_unsigned_integer (buf, instlen);
}
