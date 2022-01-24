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
typedef  int /*<<< orphan*/  dtrace_prog_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_2__ {int dofh_loadsz; } ;
typedef  TYPE_1__ dof_hdr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_VERSION ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*,int) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 unsigned char* FUNC11 (int) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 

int
FUNC13(int argc, char **argv)
{
	char *filename = argv[1];
	dtrace_hdl_t *dtp;
	dtrace_prog_t *pgp;
	int err, fd, len;
	FILE *fp;
	unsigned char *dof, *copy;

	if (argc < 2)
		FUNC8("expected D script as argument\n");

	if ((fp = FUNC10(filename, "r")) == NULL)
		FUNC8("couldn't open %s", filename);

	/*
	 * First, we need to compile our provided D into DOF.
	 */
	if ((dtp = FUNC6(DTRACE_VERSION, 0, &err)) == NULL) {
		FUNC8("cannot open dtrace library: %s\n",
		    FUNC4(NULL, err));
	}

	pgp = FUNC7(dtp, fp, 0, 0, NULL);
	FUNC9(fp);

	if (pgp == NULL) {
		FUNC8("failed to compile script %s: %s\n", filename,
		    FUNC4(dtp, FUNC5(dtp)));
	}

	dof = FUNC3(dtp, pgp, 0);
	len = ((dof_hdr_t *)dof)->dofh_loadsz;

	if ((copy = FUNC11(len)) == NULL)
		FUNC8("could not allocate copy of %d bytes", len);

	for (;;) {
		FUNC0(dof, copy, len);
		/*
		 * Open another instance of the dtrace device.
		 */
		fd = FUNC12("/devices/pseudo/dtrace@0:dtrace", O_RDWR);

		if (fd == -1)
			FUNC8("couldn't open DTrace pseudo device");

		FUNC2(fd, copy, len);
		FUNC1(fd);
	}

	/* NOTREACHED */
	return (0);
}