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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  needs_copy_in ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  sra_candidates ; 
 int /*<<< orphan*/  sra_elt_eq ; 
 int /*<<< orphan*/  sra_elt_hash ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * sra_map ; 
 int /*<<< orphan*/  sra_obstack ; 
 int /*<<< orphan*/  sra_type_decomp_cache ; 
 int /*<<< orphan*/  sra_type_inst_cache ; 
 unsigned int todoflags ; 

__attribute__((used)) static unsigned int
FUNC11 (void)
{
  /* Initialize local variables.  */
  todoflags = 0;
  FUNC4 (&sra_obstack);
  sra_candidates = FUNC0 (NULL);
  needs_copy_in = FUNC0 (NULL);
  FUNC10 ();
  sra_map = FUNC5 (101, sra_elt_hash, sra_elt_eq, NULL);

  /* Scan.  If we find anything, instantiate and scalarize.  */
  if (FUNC3 ())
    {
      FUNC9 ();
      FUNC2 ();
      FUNC8 ();
    }

  /* Free allocated memory.  */
  FUNC6 (sra_map);
  sra_map = NULL;
  FUNC1 (sra_candidates);
  FUNC1 (needs_copy_in);
  FUNC1 (sra_type_decomp_cache);
  FUNC1 (sra_type_inst_cache);
  FUNC7 (&sra_obstack, NULL);
  return todoflags;
}