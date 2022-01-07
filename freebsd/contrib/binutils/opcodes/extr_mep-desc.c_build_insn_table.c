
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int entry_size; int num_init_entries; TYPE_2__* init_entries; } ;
struct TYPE_9__ {TYPE_1__ insn_table; } ;
struct TYPE_8__ {int const* base; } ;
typedef TYPE_2__ CGEN_INSN ;
typedef int CGEN_IBASE ;
typedef TYPE_3__ CGEN_CPU_TABLE ;


 int MAX_INSNS ;
 int memset (TYPE_2__*,int ,int) ;
 int * mep_cgen_insn_table ;
 TYPE_2__* xmalloc (int) ;

__attribute__((used)) static void
build_insn_table (CGEN_CPU_TABLE *cd)
{
  int i;
  const CGEN_IBASE *ib = & mep_cgen_insn_table[0];
  CGEN_INSN *insns = xmalloc (MAX_INSNS * sizeof (CGEN_INSN));

  memset (insns, 0, MAX_INSNS * sizeof (CGEN_INSN));
  for (i = 0; i < MAX_INSNS; ++i)
    insns[i].base = &ib[i];
  cd->insn_table.init_entries = insns;
  cd->insn_table.entry_size = sizeof (CGEN_IBASE);
  cd->insn_table.num_init_entries = MAX_INSNS;
}
