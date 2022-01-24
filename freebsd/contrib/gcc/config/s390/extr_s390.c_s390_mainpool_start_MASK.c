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
struct constant_pool {int size; scalar_t__ pool_insn; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CALL_INSN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INSN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_CPU_ZARCH ; 
 scalar_t__ UNSPECV_MAIN_POOL ; 
 scalar_t__ UNSPEC_VOLATILE ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct constant_pool*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct constant_pool*,scalar_t__) ; 
 struct constant_pool* FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct constant_pool*) ; 

__attribute__((used)) static struct constant_pool *
FUNC16 (void)
{
  struct constant_pool *pool;
  rtx insn;

  pool = FUNC13 ();

  for (insn = FUNC7 (); insn; insn = FUNC1 (insn))
    {
      if (FUNC0 (insn) == INSN
	  && FUNC0 (FUNC2 (insn)) == SET
	  && FUNC0 (FUNC3 (FUNC2 (insn))) == UNSPEC_VOLATILE
	  && FUNC4 (FUNC3 (FUNC2 (insn)), 1) == UNSPECV_MAIN_POOL)
	{
	  FUNC6 (!pool->pool_insn);
	  pool->pool_insn = insn;
	}

      if (!TARGET_CPU_ZARCH && FUNC14 (insn))
	{
	  FUNC12 (pool, insn);
	}
      else if (FUNC0 (insn) == INSN || FUNC0 (insn) == CALL_INSN)
	{
	  rtx pool_ref = NULL_RTX;
	  FUNC5 (FUNC2 (insn), &pool_ref);
	  if (pool_ref)
	    {
	      rtx constant = FUNC8 (pool_ref);
	      enum machine_mode mode = FUNC9 (pool_ref);
	      FUNC11 (pool, constant, mode);
	    }
	}
    }

  FUNC6 (pool->pool_insn || pool->size == 0);

  if (pool->size >= 4096)
    {
      /* We're going to chunkify the pool, so remove the main
	 pool placeholder insn.  */
      FUNC10 (pool->pool_insn);

      FUNC15 (pool);
      pool = NULL;
    }

  return pool;
}