
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cgen_parse_operand_fn ;
struct TYPE_3__ {int parse_operand_fn; } ;
typedef TYPE_1__* CGEN_CPU_DESC ;



void
cgen_set_parse_operand_fn (CGEN_CPU_DESC cd, cgen_parse_operand_fn fn)
{
  cd->parse_operand_fn = fn;
}
