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
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5(fileargs_t *fa, const char *name)
{
	FILE *pfile;
	int rt;

	if (name == NULL)
		return (1);
	pfile = FUNC1(fa, name, "rb");
	if (pfile == NULL) {
		FUNC4("'%s': %s", name, FUNC3(errno));
		return (1);
	}

	rt = FUNC2(name, pfile);
	FUNC0(pfile);
	return (rt);
}