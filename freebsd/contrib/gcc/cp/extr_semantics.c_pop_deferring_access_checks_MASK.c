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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deferred_access ; 
 scalar_t__ deferred_access_no_check ; 
 int /*<<< orphan*/  deferred_access_stack ; 

void
FUNC1 (void)
{
  if (deferred_access_no_check)
    deferred_access_no_check--;
  else
    FUNC0 (deferred_access, deferred_access_stack);
}