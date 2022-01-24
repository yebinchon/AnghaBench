#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int machs; void* default_insn_bitsize; void* base_insn_bitsize; int min_insn_bitsize; scalar_t__ max_insn_bitsize; scalar_t__ insn_chunk_bitsize; int /*<<< orphan*/  int_insn_p; int /*<<< orphan*/ * isas; } ;
struct TYPE_12__ {void* default_insn_bitsize; void* base_insn_bitsize; int min_insn_bitsize; scalar_t__ max_insn_bitsize; } ;
struct TYPE_11__ {scalar_t__ insn_chunk_bitsize; } ;
typedef  TYPE_1__ CGEN_MACH ;
typedef  TYPE_2__ CGEN_ISA ;
typedef  TYPE_3__ CGEN_CPU_TABLE ;
typedef  int /*<<< orphan*/  CGEN_BITSET ;

/* Variables and functions */
 int /*<<< orphan*/  CGEN_INT_INSN_P ; 
 void* CGEN_SIZE_UNKNOWN ; 
 int MAX_ISAS ; 
 int MAX_MACHS ; 
 void* UNSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 TYPE_2__* mep_cgen_isa_table ; 
 TYPE_1__* mep_cgen_mach_table ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7 (CGEN_CPU_TABLE *cd)
{
  int i;
  CGEN_BITSET *isas = cd->isas;
  unsigned int machs = cd->machs;

  cd->int_insn_p = CGEN_INT_INSN_P;

  /* Data derived from the isa spec.  */
#define UNSET (CGEN_SIZE_UNKNOWN + 1)
  cd->default_insn_bitsize = UNSET;
  cd->base_insn_bitsize = UNSET;
  cd->min_insn_bitsize = 65535; /* Some ridiculously big number.  */
  cd->max_insn_bitsize = 0;
  for (i = 0; i < MAX_ISAS; ++i)
    if (FUNC5 (isas, i))
      {
	const CGEN_ISA *isa = & mep_cgen_isa_table[i];

	/* Default insn sizes of all selected isas must be
	   equal or we set the result to 0, meaning "unknown".  */
	if (cd->default_insn_bitsize == UNSET)
	  cd->default_insn_bitsize = isa->default_insn_bitsize;
	else if (isa->default_insn_bitsize == cd->default_insn_bitsize)
	  ; /* This is ok.  */
	else
	  cd->default_insn_bitsize = CGEN_SIZE_UNKNOWN;

	/* Base insn sizes of all selected isas must be equal
	   or we set the result to 0, meaning "unknown".  */
	if (cd->base_insn_bitsize == UNSET)
	  cd->base_insn_bitsize = isa->base_insn_bitsize;
	else if (isa->base_insn_bitsize == cd->base_insn_bitsize)
	  ; /* This is ok.  */
	else
	  cd->base_insn_bitsize = CGEN_SIZE_UNKNOWN;

	/* Set min,max insn sizes.  */
	if (isa->min_insn_bitsize < cd->min_insn_bitsize)
	  cd->min_insn_bitsize = isa->min_insn_bitsize;
	if (isa->max_insn_bitsize > cd->max_insn_bitsize)
	  cd->max_insn_bitsize = isa->max_insn_bitsize;
      }

  /* Data derived from the mach spec.  */
  for (i = 0; i < MAX_MACHS; ++i)
    if (((1 << i) & machs) != 0)
      {
	const CGEN_MACH *mach = & mep_cgen_mach_table[i];

	if (mach->insn_chunk_bitsize != 0)
	{
	  if (cd->insn_chunk_bitsize != 0 && cd->insn_chunk_bitsize != mach->insn_chunk_bitsize)
	    {
	      FUNC6 (stderr, "mep_cgen_rebuild_tables: conflicting insn-chunk-bitsize values: `%ld' vs. `%ld'\n",
		       cd->insn_chunk_bitsize, mach->insn_chunk_bitsize);
	      FUNC0 ();
	    }

 	  cd->insn_chunk_bitsize = mach->insn_chunk_bitsize;
	}
      }

  /* Determine which hw elements are used by MACH.  */
  FUNC1 (cd);

  /* Build the ifield table.  */
  FUNC2 (cd);

  /* Determine which operands are used by MACH/ISA.  */
  FUNC4 (cd);

  /* Build the instruction table.  */
  FUNC3 (cd);
}