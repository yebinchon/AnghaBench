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
 scalar_t__ MAX_SCS_INCREMENT ; 
 int /*<<< orphan*/  current_max_scs ; 
 int /*<<< orphan*/  num_reallocs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scbol ; 
 int /*<<< orphan*/  sceof ; 
 int /*<<< orphan*/  scname ; 
 int /*<<< orphan*/  scset ; 
 int /*<<< orphan*/  scxclu ; 

void    FUNC2 ()
{
	current_max_scs += MAX_SCS_INCREMENT;

	++num_reallocs;

	scset = FUNC1 (scset, current_max_scs);
	scbol = FUNC1 (scbol, current_max_scs);
	scxclu = FUNC1 (scxclu, current_max_scs);
	sceof = FUNC1 (sceof, current_max_scs);
	scname = FUNC0 (scname, current_max_scs);
}