
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_entries; TYPE_2__** entries; } ;
struct TYPE_8__ {TYPE_1__ hw_table; } ;
struct TYPE_7__ {unsigned int type; } ;
typedef TYPE_2__ CGEN_HW_ENTRY ;
typedef TYPE_3__* CGEN_CPU_DESC ;



const CGEN_HW_ENTRY *
cgen_hw_lookup_by_num (CGEN_CPU_DESC cd, unsigned int hwnum)
{
  unsigned int i;
  const CGEN_HW_ENTRY **hw = cd->hw_table.entries;


  for (i = 0; i < cd->hw_table.num_entries; ++i)
    if (hw[i] && hwnum == hw[i]->type)
      return hw[i];

  return ((void*)0);
}
