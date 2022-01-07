
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 unsigned int extract_unsigned_integer (char*,int) ;
 int memory_error (int,int ) ;
 int read_memory_nobpt (int ,char*,int) ;

unsigned int
alpha_read_insn (CORE_ADDR pc)
{
  char buf[4];
  int status;

  status = read_memory_nobpt (pc, buf, 4);
  if (status)
    memory_error (status, pc);
  return extract_unsigned_integer (buf, 4);
}
