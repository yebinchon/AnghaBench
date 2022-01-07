
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const** entries; } ;
struct TYPE_5__ {TYPE_1__ operand_table; } ;
typedef int CGEN_OPERAND ;
typedef TYPE_2__* CGEN_CPU_DESC ;



const CGEN_OPERAND *
cgen_operand_lookup_by_num (CGEN_CPU_DESC cd, int opnum)
{
  return cd->operand_table.entries[opnum];
}
