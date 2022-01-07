
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_init_entries; TYPE_2__* new_entries; } ;
struct TYPE_7__ {TYPE_1__ insn_table; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ CGEN_INSN_LIST ;
typedef TYPE_3__* CGEN_CPU_DESC ;



int
cgen_insn_count (CGEN_CPU_DESC cd)
{
  int count = cd->insn_table.num_init_entries;
  CGEN_INSN_LIST *rt_insns = cd->insn_table.new_entries;

  for ( ; rt_insns != ((void*)0); rt_insns = rt_insns->next)
    ++count;

  return count;
}
