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
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_if_conversion ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC8 (void)
{
  if (flag_if_conversion)
    {
      if (dump_file)
        FUNC1 (dump_file, dump_flags);
      FUNC0 (CLEANUP_EXPENSIVE);
      FUNC5 (FUNC2 (), FUNC4 ());
      FUNC3 (0);
    }

  FUNC7 (TV_JUMP);
  FUNC0 (CLEANUP_EXPENSIVE);
  FUNC5 (FUNC2 (), FUNC4 ());
  FUNC6 (TV_JUMP);
  return 0;
}