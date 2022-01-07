
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_pattern {int mask; unsigned int data; scalar_t__ optional; } ;
typedef int CORE_ADDR ;


 unsigned int read_insn (int) ;

__attribute__((used)) static int
insns_match_pattern (CORE_ADDR pc,
                     struct insn_pattern *pattern,
                     unsigned int *insn)
{
  int i;

  for (i = 0; pattern[i].mask; i++)
    {
      insn[i] = read_insn (pc);
      if ((insn[i] & pattern[i].mask) == pattern[i].data)
        pc += 4;
      else if (pattern[i].optional)
        insn[i] = 0;
      else
        return 0;
    }

  return 1;
}
