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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ curdir ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  out1 ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(char *dest, int print, int phys)
{
	int rc;

	FUNC0(("docd(\"%s\", %d, %d) called\n", dest, print, phys));

	/* If logical cd fails, fall back to physical. */
	if ((phys || (rc = FUNC1(dest)) < 0) && (rc = FUNC2(dest)) < 0)
		return (-1);

	if (print && iflag && curdir) {
		FUNC4("%s\n", curdir);
		/*
		 * Ignore write errors to preserve the invariant that the
		 * current directory is changed iff the exit status is 0
		 * (or 1 if -e was given and the full pathname could not be
		 * determined).
		 */
		FUNC3(out1);
		FUNC5(out1);
	}

	return (rc);
}