#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dfaacc_state; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* dfaacc ; 
 size_t end_of_buffer_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int lastdfa ; 
 scalar_t__ long_align ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int num_rules ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ trace ; 
 scalar_t__ useecs ; 

void FUNC8 ()
{
	int i;
	int     end_of_buffer_action = num_rules + 1;

	FUNC7 (long_align ? FUNC5 () : FUNC4 (),
		     "yy_accept", lastdfa + 1);

	dfaacc[end_of_buffer_state].dfaacc_state = end_of_buffer_action;

	for (i = 1; i <= lastdfa; ++i) {
		int anum = dfaacc[i].dfaacc_state;

		FUNC6 (anum);

		if (trace && anum)
			FUNC2 (stderr, FUNC0("state # %d accepts: [%d]\n"),
				 i, anum);
	}

	FUNC1 ();

	if (useecs)
		FUNC3 ();

	/* Don't have to dump the actual full table entries - they were
	 * created on-the-fly.
	 */
}