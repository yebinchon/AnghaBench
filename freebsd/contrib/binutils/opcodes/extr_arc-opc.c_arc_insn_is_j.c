
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;


 int I (int) ;

int
arc_insn_is_j (arc_insn insn)
{
  return (insn & (I(-1))) == I(0x7);
}
