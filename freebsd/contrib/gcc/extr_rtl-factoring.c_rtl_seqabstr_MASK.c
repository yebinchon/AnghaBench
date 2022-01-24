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
 int CLEANUP_CROSSJUMP ; 
 int CLEANUP_EXPENSIVE ; 
 int CLEANUP_UPDATE_LIFE ; 
 int /*<<< orphan*/  HASH_INIT ; 
 int PROP_DEATH_NOTES ; 
 int PROP_KILL_DEAD_CODE ; 
 int PROP_SCAN_DEAD_CODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ flag_crossjumping ; 
 int /*<<< orphan*/  hash_buckets ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htab_del_bucket ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htab_eq_bucket ; 
 int /*<<< orphan*/  htab_hash_bucket ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  pattern_seqs ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (void)
{
  int iter;

  /* Create a hash list for COLLECT_PATTERN_SEQS.  */
  hash_buckets = FUNC8 (HASH_INIT, htab_hash_bucket , htab_eq_bucket ,
                              htab_del_bucket);
  FUNC7 ();

  /* Compute the common cost of abstraction.  */
  FUNC3 ();

  /* Build an initial set of pattern sequences from the current function.  */
  FUNC2 ();
  FUNC6 ();

  /* Iterate until there are no sequences to abstract.  */
  for (iter = 1;; iter++)
    {
      /* Recompute gain for sequences if necessary and select sequence with
         biggest gain.  */
      FUNC11 ();
      if (!pattern_seqs)
        break;
      FUNC5 (iter);
      /* Update the cached info of the other sequences and force gain
         recomputation where needed.  */
      FUNC12 ();
      /* Turn best sequences into pseudo-functions and -calls.  */
      FUNC0 ();
    }

  /* Cleanup hash tables.  */
  FUNC9 (hash_buckets);

  if (iter > 1)
    {
      /* Update notes.  */
      FUNC4 (NULL, 1);

      FUNC10 (PROP_DEATH_NOTES | PROP_SCAN_DEAD_CODE
		     | PROP_KILL_DEAD_CODE);

      /* Extra cleanup.  */
      FUNC1 (CLEANUP_EXPENSIVE |
                   CLEANUP_UPDATE_LIFE |
                   (flag_crossjumping ? CLEANUP_CROSSJUMP : 0));
    }
}