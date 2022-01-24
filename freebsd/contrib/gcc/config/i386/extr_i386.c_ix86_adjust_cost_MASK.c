#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum attr_unit { ____Placeholder_attr_unit } attr_unit ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;
typedef  enum attr_memory { ____Placeholder_attr_memory } attr_memory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int MEMORY_BOTH ; 
 int MEMORY_LOAD ; 
 int MEMORY_STORE ; 
 int /*<<< orphan*/  NULL_RTX ; 
#define  PROCESSOR_AMDFAM10 135 
#define  PROCESSOR_ATHLON 134 
#define  PROCESSOR_GENERIC32 133 
#define  PROCESSOR_GENERIC64 132 
#define  PROCESSOR_K6 131 
#define  PROCESSOR_K8 130 
#define  PROCESSOR_PENTIUM 129 
#define  PROCESSOR_PENTIUMPRO 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_ATHLON ; 
 int TYPE_FMOV ; 
 int TYPE_IMOV ; 
 int TYPE_POP ; 
 int TYPE_PUSH ; 
 int UNIT_INTEGER ; 
 int UNIT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ix86_tune ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13 (rtx insn, rtx link, rtx dep_insn, int cost)
{
  enum attr_type insn_type, dep_insn_type;
  enum attr_memory memory;
  rtx set, set2;
  int dep_insn_code_number;

  /* Anti and output dependencies have zero cost on all CPUs.  */
  if (FUNC1 (link) != 0)
    return 0;

  dep_insn_code_number = FUNC10 (dep_insn);

  /* If we can't recognize the insns, we can't really do anything.  */
  if (dep_insn_code_number < 0 || FUNC10 (insn) < 0)
    return cost;

  insn_type = FUNC6 (insn);
  dep_insn_type = FUNC6 (dep_insn);

  switch (ix86_tune)
    {
    case PROCESSOR_PENTIUM:
      /* Address Generation Interlock adds a cycle of latency.  */
      if (FUNC8 (insn, dep_insn, insn_type))
	cost += 1;

      /* ??? Compares pair with jump/setcc.  */
      if (FUNC9 (insn, dep_insn, insn_type))
	cost = 0;

      /* Floating point stores require value to be ready one cycle earlier.  */
      if (insn_type == TYPE_FMOV
	  && FUNC5 (insn) == MEMORY_STORE
	  && !FUNC8 (insn, dep_insn, insn_type))
	cost += 1;
      break;

    case PROCESSOR_PENTIUMPRO:
      memory = FUNC5 (insn);

      /* INT->FP conversion is expensive.  */
      if (FUNC4 (dep_insn))
	cost += 5;

      /* There is one cycle extra latency between an FP op and a store.  */
      if (insn_type == TYPE_FMOV
	  && (set = FUNC12 (dep_insn)) != NULL_RTX
	  && (set2 = FUNC12 (insn)) != NULL_RTX
	  && FUNC11 (FUNC2 (set), FUNC3 (set2))
	  && FUNC0 (FUNC2 (set2)) == MEM)
	cost += 1;

      /* Show ability of reorder buffer to hide latency of load by executing
	 in parallel with previous instruction in case
	 previous instruction is not needed to compute the address.  */
      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
	  && !FUNC8 (insn, dep_insn, insn_type))
	{
	  /* Claim moves to take one cycle, as core can issue one load
	     at time and the next load can start cycle later.  */
	  if (dep_insn_type == TYPE_IMOV
	      || dep_insn_type == TYPE_FMOV)
	    cost = 1;
	  else if (cost > 1)
	    cost--;
	}
      break;

    case PROCESSOR_K6:
      memory = FUNC5 (insn);

      /* The esp dependency is resolved before the instruction is really
         finished.  */
      if ((insn_type == TYPE_PUSH || insn_type == TYPE_POP)
	  && (dep_insn_type == TYPE_PUSH || dep_insn_type == TYPE_POP))
	return 1;

      /* INT->FP conversion is expensive.  */
      if (FUNC4 (dep_insn))
	cost += 5;

      /* Show ability of reorder buffer to hide latency of load by executing
	 in parallel with previous instruction in case
	 previous instruction is not needed to compute the address.  */
      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
	  && !FUNC8 (insn, dep_insn, insn_type))
	{
	  /* Claim moves to take one cycle, as core can issue one load
	     at time and the next load can start cycle later.  */
	  if (dep_insn_type == TYPE_IMOV
	      || dep_insn_type == TYPE_FMOV)
	    cost = 1;
	  else if (cost > 2)
	    cost -= 2;
	  else
	    cost = 1;
	}
      break;

    case PROCESSOR_ATHLON:
    case PROCESSOR_K8:
    case PROCESSOR_AMDFAM10:
    case PROCESSOR_GENERIC32:
    case PROCESSOR_GENERIC64:
      memory = FUNC5 (insn);

      /* Show ability of reorder buffer to hide latency of load by executing
	 in parallel with previous instruction in case
	 previous instruction is not needed to compute the address.  */
      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
	  && !FUNC8 (insn, dep_insn, insn_type))
	{
	  enum attr_unit unit = FUNC7 (insn);
	  int loadcost = 3;

	  /* Because of the difference between the length of integer and
	     floating unit pipeline preparation stages, the memory operands
	     for floating point are cheaper.

	     ??? For Athlon it the difference is most probably 2.  */
	  if (unit == UNIT_INTEGER || unit == UNIT_UNKNOWN)
	    loadcost = 3;
	  else
	    loadcost = TARGET_ATHLON ? 2 : 0;

	  if (cost >= loadcost)
	    cost -= loadcost;
	  else
	    cost = 0;
	}

    default:
      break;
    }

  return cost;
}