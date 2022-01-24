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
 int /*<<< orphan*/  NR_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nr_swap_pages ; 

unsigned long FUNC1(void)
{
	int nr;

	nr = FUNC0(NR_ACTIVE_FILE) +
	     FUNC0(NR_INACTIVE_FILE);

	if (nr_swap_pages > 0)
		nr += FUNC0(NR_ACTIVE_ANON) +
		      FUNC0(NR_INACTIVE_ANON);

	return nr;
}