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
 int /*<<< orphan*/  LOOPS_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_loops ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  if (dump_file)
    FUNC1 (dump_file, dump_flags);

  /* Initialize structures for layout changes.  */
  FUNC0 (0);

  current_loops = FUNC2 (LOOPS_NORMAL);
  return 0;
}