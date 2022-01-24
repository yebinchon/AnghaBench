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
 int /*<<< orphan*/  libunwind_descr_handle ; 
 int /*<<< orphan*/  libunwind_descr_init ; 
 int /*<<< orphan*/  libunwind_initialized ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  libunwind_descr_handle = FUNC1 (libunwind_descr_init);

  libunwind_initialized = FUNC0 ();
}