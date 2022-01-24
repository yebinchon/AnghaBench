#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ entries; } ;
struct TYPE_13__ {scalar_t__ entries; } ;
struct TYPE_12__ {unsigned int num_init_entries; TYPE_5__* init_entries; } ;
struct TYPE_11__ {unsigned int num_init_entries; TYPE_5__* init_entries; } ;
struct TYPE_15__ {TYPE_4__ operand_table; TYPE_3__ hw_table; TYPE_2__ insn_table; TYPE_1__ macro_insn_table; } ;
typedef  TYPE_5__ CGEN_INSN ;
typedef  TYPE_5__ CGEN_HW_ENTRY ;
typedef  TYPE_5__* CGEN_CPU_DESC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3 (CGEN_CPU_DESC cd)
{
  unsigned int i;
  const CGEN_INSN *insns;

  if (cd->macro_insn_table.init_entries)
    {
      insns = cd->macro_insn_table.init_entries;
      for (i = 0; i < cd->macro_insn_table.num_init_entries; ++i, ++insns)
	if (FUNC0 ((insns)))
	  FUNC2 (FUNC0 (insns));
    }

  if (cd->insn_table.init_entries)
    {
      insns = cd->insn_table.init_entries;
      for (i = 0; i < cd->insn_table.num_init_entries; ++i, ++insns)
	if (FUNC0 (insns))
	  FUNC2 (FUNC0 (insns));
    }  

  if (cd->macro_insn_table.init_entries)
    FUNC1 ((CGEN_INSN *) cd->macro_insn_table.init_entries);

  if (cd->insn_table.init_entries)
    FUNC1 ((CGEN_INSN *) cd->insn_table.init_entries);

  if (cd->hw_table.entries)
    FUNC1 ((CGEN_HW_ENTRY *) cd->hw_table.entries);

  if (cd->operand_table.entries)
    FUNC1 ((CGEN_HW_ENTRY *) cd->operand_table.entries);

  FUNC1 (cd);
}