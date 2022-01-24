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
typedef  int /*<<< orphan*/  zoneid_t ;
typedef  int /*<<< orphan*/  jailid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

zoneid_t
FUNC2(void)
{
	size_t size;
	int jailid;

	/* Information that we are in jail or not is enough for our needs. */
	size = sizeof(jailid);
	if (FUNC1("security.jail.jailed", &jailid, &size, NULL, 0) == -1)
		FUNC0(!"No security.jail.jailed sysctl!");
	return ((zoneid_t)jailid);
}