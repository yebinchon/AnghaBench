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
 int /*<<< orphan*/  TV_JUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cse_not_expected ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC13 (void)
{
  int tem;

  if (dump_file)
    FUNC5 (dump_file, dump_flags);

  tem = FUNC2 (FUNC6 (), FUNC7 ());

  /* Run a pass to eliminate duplicated assignments to condition code
     registers.  We have to run this after bypass_jumps, because it
     makes it harder for that pass to determine whether a jump can be
     bypassed safely.  */
  FUNC1 ();

  FUNC8 ();
  FUNC4 (FUNC6 (), FUNC7 ());

  if (tem)
    {
      FUNC12 (TV_JUMP);
      FUNC9 (FUNC6 ());
      FUNC3 ();
      FUNC0 (CLEANUP_EXPENSIVE);
      FUNC11 (TV_JUMP);
    }
  FUNC10 (FUNC6 (), FUNC7 ());
  cse_not_expected = 1;
  return 0;
}