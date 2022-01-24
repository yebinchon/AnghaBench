#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fx_r_type; int /*<<< orphan*/ * fx_addsy; } ;
typedef  TYPE_1__ fixS ;
typedef  scalar_t__ bfd_reloc_code_real_type ;
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  CGEN_OPERAND ;
typedef  int /*<<< orphan*/  CGEN_INSN ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_UNUSED ; 
 scalar_t__ BFD_RELOC_VTABLE_ENTRY ; 
 scalar_t__ BFD_RELOC_VTABLE_INHERIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gas_cgen_cpu_desc ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*) ; 

bfd_boolean
FUNC4 (fixS *fixP)
{
  bfd_reloc_code_real_type reloc_type;

  if ((int) fixP->fx_r_type >= (int) BFD_RELOC_UNUSED)
    {
      const CGEN_INSN *insn = NULL;
      int opindex = (int) fixP->fx_r_type - (int) BFD_RELOC_UNUSED;
      const CGEN_OPERAND *operand
	= FUNC2(gas_cgen_cpu_desc, opindex);
      reloc_type = FUNC3 (insn, operand, fixP);
    }
  else
    reloc_type = fixP->fx_r_type;

  if (fixP->fx_addsy == NULL)
    return 1;

  /* Prevent all adjustments to global symbols. */
  if (FUNC0 (fixP->fx_addsy))
    return 0;

  if (FUNC1 (fixP->fx_addsy))
    return 0;

  /* We need the symbol name for the VTABLE entries */
  if (reloc_type == BFD_RELOC_VTABLE_INHERIT
      || reloc_type == BFD_RELOC_VTABLE_ENTRY)
    return 0;

  return 1;
}