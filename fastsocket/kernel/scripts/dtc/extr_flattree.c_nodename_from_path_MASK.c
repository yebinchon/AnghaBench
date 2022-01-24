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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static char *FUNC5(const char *ppath, const char *cpath)
{
	int plen;

	plen = FUNC3(ppath);

	if (!FUNC4(ppath, cpath, plen))
		FUNC0("Path \"%s\" is not valid as a child of \"%s\"\n",
		    cpath, ppath);

	/* root node is a special case */
	if (!FUNC2(ppath, "/"))
		plen++;

	return FUNC1(cpath + plen);
}