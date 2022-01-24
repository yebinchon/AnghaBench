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
 int ERR ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ seek_write ; 
 char* sfn ; 
 int /*<<< orphan*/ * sfp ; 
 scalar_t__ sfseek ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(void)
{
	if (sfp) {
		if (FUNC0(sfp) < 0) {
			FUNC1(stderr, "%s: %s\n", sfn, FUNC2(errno));
			errmsg = "cannot close temp file";
			return ERR;
		}
		sfp = NULL;
		FUNC3(sfn);
	}
	sfseek = seek_write = 0;
	return 0;
}