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
typedef  int u32 ;
typedef  int /*<<< orphan*/  ctl_table ;

/* Variables and functions */
 int DIR__SEARCH ; 
 int FILE__READ ; 
 int FILE__WRITE ; 
 int /*<<< orphan*/  SECCLASS_DIR ; 
 int /*<<< orphan*/  SECCLASS_FILE ; 
 int SECINITSID_SYSCTL ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(ctl_table *table, int op)
{
	int error = 0;
	u32 av;
	u32 tsid, sid;
	int rc;

	sid = FUNC1();

	rc = FUNC2(table, (op == 0001) ?
				    SECCLASS_DIR : SECCLASS_FILE, &tsid);
	if (rc) {
		/* Default to the well-defined sysctl SID. */
		tsid = SECINITSID_SYSCTL;
	}

	/* The op values are "defined" in sysctl.c, thereby creating
	 * a bad coupling between this module and sysctl.c */
	if (op == 001) {
		error = FUNC0(sid, tsid,
				     SECCLASS_DIR, DIR__SEARCH, NULL);
	} else {
		av = 0;
		if (op & 004)
			av |= FILE__READ;
		if (op & 002)
			av |= FILE__WRITE;
		if (av)
			error = FUNC0(sid, tsid,
					     SECCLASS_FILE, av, NULL);
	}

	return error;
}