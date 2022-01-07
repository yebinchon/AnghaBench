
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ canon_reg (scalar_t__,scalar_t__) ;
 int validate_change (scalar_t__,scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static void
validate_canon_reg (rtx *xloc, rtx insn)
{
  rtx new = canon_reg (*xloc, insn);



  if (insn != 0 && new != 0)
    validate_change (insn, xloc, new, 1);
  else
    *xloc = new;
}
