
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int print_operand; int * print_handlers; } ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int mep_cgen_init_ibld_table (TYPE_1__*) ;
 int mep_cgen_init_opcode_table (TYPE_1__*) ;
 int * mep_cgen_print_handlers ;
 int mep_cgen_print_operand ;

void
mep_cgen_init_dis (CGEN_CPU_DESC cd)
{
  mep_cgen_init_opcode_table (cd);
  mep_cgen_init_ibld_table (cd);
  cd->print_handlers = & mep_cgen_print_handlers[0];
  cd->print_operand = mep_cgen_print_operand;
}
