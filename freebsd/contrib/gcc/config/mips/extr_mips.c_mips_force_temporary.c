
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int copy_rtx (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (int ,int ) ;
 int no_new_pseudos ;

__attribute__((used)) static rtx
mips_force_temporary (rtx dest, rtx value)
{
  if (!no_new_pseudos)
    return force_reg (Pmode, value);
  else
    {
      emit_move_insn (copy_rtx (dest), value);
      return dest;
    }
}
