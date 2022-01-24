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
struct gss_api_mech {int /*<<< orphan*/  gm_name; int /*<<< orphan*/  gm_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gss_api_mech*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  registered_mechs ; 
 int /*<<< orphan*/  registered_mechs_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct gss_api_mech *gm)
{
	int status;

	status = FUNC1(gm);
	if (status)
		return status;
	FUNC3(&registered_mechs_lock);
	FUNC2(&gm->gm_list, &registered_mechs);
	FUNC4(&registered_mechs_lock);
	FUNC0("RPC:       registered gss mechanism %s\n", gm->gm_name);
	return 0;
}