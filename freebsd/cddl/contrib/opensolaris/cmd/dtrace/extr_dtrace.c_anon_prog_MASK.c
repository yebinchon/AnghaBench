#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar_t ;
struct TYPE_6__ {int /*<<< orphan*/  dc_name; } ;
typedef  TYPE_1__ dtrace_cmd_t ;
struct TYPE_7__ {int dofh_loadsz; } ;
typedef  TYPE_2__ dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  g_dtp ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(const dtrace_cmd_t *dcp, dof_hdr_t *dof, int n)
{
	const uchar_t *p, *q;

	if (dof == NULL)
		FUNC0("failed to create DOF image for '%s'", dcp->dc_name);

	p = (uchar_t *)dof;
	q = p + dof->dofh_loadsz;

#ifdef __FreeBSD__
	/*
	 * On FreeBSD, the DOF file is read directly during boot - just write
	 * two hex characters per byte.
	 */
	oprintf("dof-data-%d=", n);

	while (p < q)
		oprintf("%02x", *p++);

	oprintf("\n");
#else
	FUNC2("dof-data-%d=0x%x", n, *p++);

	while (p < q)
		FUNC2(",0x%x", *p++);

	FUNC2(";\n");
#endif

	FUNC1(g_dtp, dof);
}