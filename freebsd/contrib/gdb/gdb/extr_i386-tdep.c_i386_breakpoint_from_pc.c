
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int break_insn ;
typedef int CORE_ADDR ;



__attribute__((used)) static const unsigned char *
i386_breakpoint_from_pc (CORE_ADDR *pc, int *len)
{
  static unsigned char break_insn[] = { 0xcc };

  *len = sizeof (break_insn);
  return break_insn;
}
