
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ia64_insn ;
struct TYPE_2__ {int mask; int bits; int offset; } ;


 TYPE_1__* completer_table ;

__attribute__((used)) static ia64_insn
apply_completer (ia64_insn opcode, int completer_index)
{
  ia64_insn mask = completer_table[completer_index].mask;
  ia64_insn bits = completer_table[completer_index].bits;
  int shiftamt = (completer_table[completer_index].offset & 63);

  mask = mask << shiftamt;
  bits = bits << shiftamt;
  opcode = (opcode & ~mask) | bits;
  return opcode;
}
