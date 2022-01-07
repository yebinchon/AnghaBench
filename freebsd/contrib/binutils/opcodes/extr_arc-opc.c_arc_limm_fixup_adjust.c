
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;


 int ARC_REG_LIMM ;
 int ARC_REG_SHIMM ;
 int B (int) ;
 int C (int) ;
 int I (int) ;

int
arc_limm_fixup_adjust (arc_insn insn)
{
  int retval = 0;


  if ((insn & (I(-1) | C(-1) | B(-1))) ==
      (I(2) | C(ARC_REG_SHIMM) | B(ARC_REG_LIMM)))
    {
      retval = insn & 0x1ff;
      if (retval & 0x100)
 retval |= ~0x1ff;
    }
  return -retval;
}
