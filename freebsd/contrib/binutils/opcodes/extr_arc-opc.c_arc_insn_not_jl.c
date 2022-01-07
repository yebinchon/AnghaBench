
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;


 int A (int) ;
 int C (int) ;
 int I (int) ;
 int R (int,int,int) ;

int
arc_insn_not_jl (arc_insn insn)
{
  return ((insn & (I(-1)|A(-1)|C(-1)|R(-1,7,1)|R(-1,9,1)))
   != (I(0x7) | R(-1,9,1)));
}
