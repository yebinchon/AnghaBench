
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_entries; TYPE_2__** entries; } ;
struct TYPE_8__ {TYPE_1__ hw_table; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ CGEN_HW_ENTRY ;
typedef TYPE_3__* CGEN_CPU_DESC ;


 scalar_t__ strcmp (char const*,int ) ;

const CGEN_HW_ENTRY *
cgen_hw_lookup_by_name (CGEN_CPU_DESC cd, const char *name)
{
  unsigned int i;
  const CGEN_HW_ENTRY **hw = cd->hw_table.entries;

  for (i = 0; i < cd->hw_table.num_entries; ++i)
    if (hw[i] && strcmp (name, hw[i]->name) == 0)
      return hw[i];

  return ((void*)0);
}
