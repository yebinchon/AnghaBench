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
 int /*<<< orphan*/  CLEANUP_EXPENSIVE ; 
 int /*<<< orphan*/  TV_CSE ; 
 int /*<<< orphan*/  TV_JUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cse_not_expected ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int flag_cse_follow_jumps ; 
 int flag_cse_skip_blocks ; 
 scalar_t__ flag_expensive_optimizations ; 
 int /*<<< orphan*/  flag_rerun_cse_after_loop ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC12 (void)
{
  int save_csb, save_cfj;
  int tem2 = 0, tem;

  tem = FUNC4 (FUNC5 ());
  FUNC8 (FUNC5 ());
  FUNC3 (FUNC5 (), FUNC6 ());

  save_csb = flag_cse_skip_blocks;
  save_cfj = flag_cse_follow_jumps;
  flag_cse_skip_blocks = flag_cse_follow_jumps = 0;

  /* If -fexpensive-optimizations, re-run CSE to clean up things done
     by gcse.  */
  if (flag_expensive_optimizations)
    {
      FUNC11 (TV_CSE);
      FUNC9 (FUNC5 (), FUNC6 ());
      tem2 = FUNC1 (FUNC5 (), FUNC6 ());
      FUNC7 ();
      FUNC3 (FUNC5 (), FUNC6 ());
      FUNC10 (TV_CSE);
      cse_not_expected = !flag_rerun_cse_after_loop;
    }

  /* If gcse or cse altered any jumps, rerun jump optimizations to clean
     things up.  */
  if (tem || tem2)
    {
      FUNC11 (TV_JUMP);
      FUNC8 (FUNC5 ());
      FUNC2 ();
      FUNC0 (CLEANUP_EXPENSIVE);
      FUNC10 (TV_JUMP);
    }

  flag_cse_skip_blocks = save_csb;
  flag_cse_follow_jumps = save_cfj;
  return 0;
}