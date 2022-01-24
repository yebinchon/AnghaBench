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
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *dest)
{
	char *p;
	int rc = 0;

	INTOFF;
	if (FUNC0(dest) < 0) {
		INTON;
		return (-1);
	}
	p = FUNC1(NULL);
	if (p == NULL) {
		FUNC3("warning: failed to get name of current directory");
		rc = 1;
	}
	FUNC2(p);
	INTON;
	return (rc);
}