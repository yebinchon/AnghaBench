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
 scalar_t__ NUM_FIXED_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ n_basic_blocks ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7 (unsigned int flags)
{
  if (n_basic_blocks <= NUM_FIXED_BLOCKS + 1)
    return;

  FUNC1 (flags);
  FUNC5 ();
  if (dump_file)
    FUNC3 (dump_file, dump_flags);
  FUNC6 ();
  FUNC4 ();
  if (dump_file)
    FUNC3 (dump_file, dump_flags);
  FUNC0 ();

  /* Merge basic blocks in duplicated traces.  */
  FUNC2 (CLEANUP_EXPENSIVE);
}