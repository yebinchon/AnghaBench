
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int entry_size; int num_entries; TYPE_2__ const** entries; TYPE_2__ const* init_entries; } ;
struct TYPE_10__ {int machs; TYPE_1__ hw_table; } ;
struct TYPE_9__ {size_t type; int * name; } ;
typedef TYPE_2__ CGEN_HW_ENTRY ;
typedef TYPE_3__ CGEN_CPU_TABLE ;


 int CGEN_HW_ATTR_VALUE (TYPE_2__ const*,int ) ;
 int CGEN_HW_MACH ;
 int MAX_HW ;
 int memset (TYPE_2__ const**,int ,int) ;
 TYPE_2__* mep_cgen_hw_table ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
build_hw_table (CGEN_CPU_TABLE *cd)
{
  int i;
  int machs = cd->machs;
  const CGEN_HW_ENTRY *init = & mep_cgen_hw_table[0];



  const CGEN_HW_ENTRY **selected =
    (const CGEN_HW_ENTRY **) xmalloc (MAX_HW * sizeof (CGEN_HW_ENTRY *));

  cd->hw_table.init_entries = init;
  cd->hw_table.entry_size = sizeof (CGEN_HW_ENTRY);
  memset (selected, 0, MAX_HW * sizeof (CGEN_HW_ENTRY *));

  for (i = 0; init[i].name != ((void*)0); ++i)
    if (CGEN_HW_ATTR_VALUE (&init[i], CGEN_HW_MACH)
 & machs)
      selected[init[i].type] = &init[i];
  cd->hw_table.entries = selected;
  cd->hw_table.num_entries = MAX_HW;
}
