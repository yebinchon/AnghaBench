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
struct dlm_rsb {int res_nodeid; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 scalar_t__ FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*,int) ; 

__attribute__((used)) static int FUNC5(struct dlm_rsb *r)
{
	int master = FUNC0(r);

	if (master == FUNC1())
		master = 0;

	if (r->res_nodeid != master) {
		if (FUNC3(r))
			FUNC2(r);
		FUNC4(r, master);
		return 1;
	}
	return 0;
}