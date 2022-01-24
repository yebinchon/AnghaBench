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
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dk_no_check ; 
 int /*<<< orphan*/  dk_no_deferred ; 
 scalar_t__ flag_access_control ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * the_parser ; 

void
FUNC4 (void)
{
  bool error_occurred;
  static bool already_called = false;

  if (already_called)
    {
      FUNC3 ("inter-module optimizations not implemented for C++");
      return;
    }
  already_called = true;

  the_parser = FUNC0 ();
  FUNC2 (flag_access_control
				? dk_no_deferred : dk_no_check);
  error_occurred = FUNC1 (the_parser);
  the_parser = NULL;
}