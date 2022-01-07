
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int * alpha_insn_label ;
 int dwarf2_emit_label (int *) ;

void
alpha_define_label (symbolS *sym)
{
  alpha_insn_label = sym;



}
