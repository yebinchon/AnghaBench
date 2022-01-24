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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ current_namespace ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (void)
{
  FUNC1 (current_namespace != global_namespace);
  current_namespace = FUNC0 (current_namespace);
  /* The binding level is not popped, as it might be re-opened later.  */
  FUNC2 ();
}