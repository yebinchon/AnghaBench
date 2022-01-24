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
struct constant_pool {int /*<<< orphan*/  pool_insn; struct constant* execute; int /*<<< orphan*/  label; struct constant** constants; } ;
struct constant {int /*<<< orphan*/  value; int /*<<< orphan*/  label; struct constant* next; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CONST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int NR_C_MODES ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_CPU_ZARCH ; 
 scalar_t__ UNSPEC ; 
 int /*<<< orphan*/  UNSPECV_POOL_ENTRY ; 
 scalar_t__ UNSPEC_LTREL_OFFSET ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * constant_modes ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20 (struct constant_pool *pool, bool remote_label)
{
  struct constant *c;
  rtx insn = pool->pool_insn;
  int i;

  /* Switch to rodata section.  */
  if (TARGET_CPU_ZARCH)
    {
      insn = FUNC8 (FUNC12 (), insn);
      FUNC2 (insn, -1);
    }

  /* Ensure minimum pool alignment.  */
  if (TARGET_CPU_ZARCH)
    insn = FUNC8 (FUNC10 (FUNC0 (8)), insn);
  else
    insn = FUNC8 (FUNC10 (FUNC0 (4)), insn);
  FUNC2 (insn, -1);

  /* Emit pool base label.  */
  if (!remote_label)
    {
      insn = FUNC9 (pool->label, insn);
      FUNC2 (insn, -1);
    }

  /* Dump constants in descending alignment requirement order,
     ensuring proper alignment for every constant.  */
  for (i = 0; i < NR_C_MODES; i++)
    for (c = pool->constants[i]; c; c = c->next)
      {
	/* Convert UNSPEC_LTREL_OFFSET unspecs to pool-relative references.  */
	rtx value = c->value;
	if (FUNC1 (value) == CONST
	    && FUNC1 (FUNC3 (value, 0)) == UNSPEC
	    && FUNC4 (FUNC3 (value, 0), 1) == UNSPEC_LTREL_OFFSET
	    && FUNC6 (FUNC3 (value, 0), 0) == 1)
	  {
	    value = FUNC16 (Pmode, FUNC5 (FUNC3 (value, 0), 0, 0),
				   FUNC15 (VOIDmode, pool->label));
	    value = FUNC14 (VOIDmode, value);
	  }

	insn = FUNC9 (c->label, insn);
	FUNC2 (insn, -1);

	value = FUNC17 (constant_modes[i],
					 FUNC13 (1, value),
					 UNSPECV_POOL_ENTRY);
	insn = FUNC8 (value, insn);
	FUNC2 (insn, -1);
      }

  /* Ensure minimum alignment for instructions.  */
  insn = FUNC8 (FUNC10 (FUNC0 (2)), insn);
  FUNC2 (insn, -1);

  /* Output in-pool execute template insns.  */
  for (c = pool->execute; c; c = c->next)
    {
      insn = FUNC9 (c->label, insn);
      FUNC2 (insn, -1);

      insn = FUNC8 (FUNC19 (c->value), insn);
      FUNC2 (insn, -1);
    }

  /* Switch back to previous section.  */
  if (TARGET_CPU_ZARCH)
    {
      insn = FUNC8 (FUNC11 (), insn);
      FUNC2 (insn, -1);
    }

  insn = FUNC7 (insn);
  FUNC2 (insn, -1);

  /* Remove placeholder insn.  */
  FUNC18 (pool->pool_insn);
}