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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mf_cache_mask_decl ; 
 int /*<<< orphan*/  mf_cache_mask_decl_l ; 
 int /*<<< orphan*/  mf_cache_shift_decl ; 
 int /*<<< orphan*/  mf_cache_shift_decl_l ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  tree t, shift_init_stmts, mask_init_stmts;
  tree_stmt_iterator tsi;

  /* Build the cache vars.  */
  mf_cache_shift_decl_l
    = FUNC8 (FUNC5 (FUNC2 (mf_cache_shift_decl),
                               "__mf_lookup_shift_l"));

  mf_cache_mask_decl_l
    = FUNC8 (FUNC5 (FUNC2 (mf_cache_mask_decl),
                               "__mf_lookup_mask_l"));

  /* Build initialization nodes for the cache vars.  We just load the
     globals into the cache variables.  */
  t = FUNC4 (MODIFY_EXPR, FUNC2 (mf_cache_shift_decl_l),
              mf_cache_shift_decl_l, mf_cache_shift_decl);
  FUNC1 (t, FUNC0 (current_function_decl));
  FUNC6 (&t);
  shift_init_stmts = t;

  t = FUNC4 (MODIFY_EXPR, FUNC2 (mf_cache_mask_decl_l),
              mf_cache_mask_decl_l, mf_cache_mask_decl);
  FUNC1 (t, FUNC0 (current_function_decl));
  FUNC6 (&t);
  mask_init_stmts = t;

  /* Anticipating multiple entry points, we insert the cache vars
     initializers in each successor of the ENTRY_BLOCK_PTR.  */
  for (tsi = FUNC11 (shift_init_stmts);
       ! FUNC9 (tsi);
       FUNC10 (&tsi))
    FUNC7 (FUNC12 (tsi), ENTRY_BLOCK_PTR);

  for (tsi = FUNC11 (mask_init_stmts);
       ! FUNC9 (tsi);
       FUNC10 (&tsi))
    FUNC7 (FUNC12 (tsi), ENTRY_BLOCK_PTR);
  FUNC3 ();
}