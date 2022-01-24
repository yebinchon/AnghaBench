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
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flag_strict_aliasing ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int warn_strict_aliasing ; 

void
FUNC3 (void)
{
  if (!(flag_strict_aliasing
        && warn_strict_aliasing == 3
        && !FUNC2 (current_function_decl)))
    return;

  FUNC0 ();
  FUNC1 ();
}