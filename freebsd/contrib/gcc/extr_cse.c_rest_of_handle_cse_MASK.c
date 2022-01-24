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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cse_not_expected ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_gcse ; 
 int /*<<< orphan*/  flag_rerun_cse_after_loop ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int optimize ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC11 (void)
{
  int tem;

  if (dump_file)
    FUNC5 (dump_file, dump_flags);

  FUNC10 (FUNC6 (), FUNC7 ());

  tem = FUNC1 (FUNC6 (), FUNC7 ());
  if (tem)
    FUNC9 (FUNC6 ());
  if (FUNC8 ())
    FUNC4 ();

  FUNC3 (FUNC6 (), FUNC7 ());

  /* If we are not running more CSE passes, then we are no longer
     expecting CSE to be run.  But always rerun it in a cheap mode.  */
  cse_not_expected = !flag_rerun_cse_after_loop && !flag_gcse;

  if (tem)
    FUNC2 ();

  if (tem || optimize > 1)
    FUNC0 (CLEANUP_EXPENSIVE);
  return 0;
}