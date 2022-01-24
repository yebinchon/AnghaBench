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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_GCSE_PASSES ; 
 scalar_t__ NUM_FIXED_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int bytes_used ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ current_function_calls_setjmp ; 
 char* FUNC5 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gcse_obstack ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_gcse_regno ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ n_basic_blocks ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC17 (void)
{
  int changed;

  /* We do not construct an accurate cfg in functions which call
     setjmp, so just punt to be safe.  */
  if (current_function_calls_setjmp)
    return 0;

  /* Identify the basic block information for this function, including
     successors and predecessors.  */
  max_gcse_regno = FUNC14 ();

  if (dump_file)
    FUNC6 (dump_file, dump_flags);

  /* Return if there's nothing to do, or it is too expensive.  */
  if (n_basic_blocks <= NUM_FIXED_BLOCKS + 1
      || FUNC13 (FUNC0 ("jump bypassing disabled")))
    return 0;

  FUNC11 (&gcse_obstack);
  bytes_used = 0;

  /* We need alias.  */
  FUNC12 ();

  /* Record where pseudo-registers are set.  This data is kept accurate
     during each pass.  ??? We could also record hard-reg information here
     [since it's unchanging], however it is currently done during hash table
     computation.

     It may be tempting to compute MEM set information here too, but MEM sets
     will be subject to code motion one day and thus we need to compute
     information about memory sets when we build the hash tables.  */

  FUNC2 (max_gcse_regno);
  FUNC4 ();

  max_gcse_regno = FUNC14 ();
  FUNC1 ();
  changed = FUNC16 (MAX_GCSE_PASSES + 2, true, true);
  FUNC9 ();

  if (dump_file)
    {
      FUNC8 (dump_file, "BYPASS of %s: %ld basic blocks, ",
	       FUNC5 (), n_basic_blocks);
      FUNC8 (dump_file, "%d bytes\n\n", bytes_used);
    }

  FUNC15 (&gcse_obstack, NULL);
  FUNC10 ();

  /* We are finished with alias.  */
  FUNC7 ();
  FUNC3 (FUNC14 (), FALSE, FALSE);

  return changed;
}