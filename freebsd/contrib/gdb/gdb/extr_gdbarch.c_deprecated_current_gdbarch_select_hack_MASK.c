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
struct gdbarch {int /*<<< orphan*/  initialized_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (struct gdbarch *new_gdbarch)
{
  FUNC3 (new_gdbarch != NULL);
  FUNC3 (current_gdbarch != NULL);
  FUNC3 (new_gdbarch->initialized_p);
  FUNC2 ();
  FUNC1 (new_gdbarch);
  FUNC0 ();
}