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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_tinst_level ; 
 int /*<<< orphan*/  in_system_header ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  tinst_depth ; 
 int /*<<< orphan*/  tinst_level_tick ; 

__attribute__((used)) static void
FUNC3 (void)
{
  tree old = current_tinst_level;

  /* Restore the filename and line number stashed away when we started
     this instantiation.  */
  input_location = FUNC1 (old);
  in_system_header = FUNC0 (old);
  current_tinst_level = FUNC2 (old);
  --tinst_depth;
  ++tinst_level_tick;
}