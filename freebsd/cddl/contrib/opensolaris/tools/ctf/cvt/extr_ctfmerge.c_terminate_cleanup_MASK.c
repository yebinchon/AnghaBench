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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* outfile ; 
 int /*<<< orphan*/  stderr ; 
 char* tmpname ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int dounlink = FUNC1("CTFMERGE_TERMINATE_NO_UNLINK") ? 0 : 1;

	if (tmpname != NULL && dounlink)
		FUNC2(tmpname);

	if (outfile == NULL)
		return;

#if !defined(__FreeBSD__)
	if (dounlink) {
		FUNC0(stderr, "Removing %s\n", outfile);
		FUNC2(outfile);
	}
#endif
}