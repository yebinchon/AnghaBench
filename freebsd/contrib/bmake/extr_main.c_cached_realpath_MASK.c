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
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC6(const char *pathname, char *resolved)
{
    GNode *cache;
    char *rp, *cp;

    if (!pathname || !pathname[0])
	return NULL;

    cache = FUNC3();

    if ((rp = FUNC1(pathname, cache, &cp)) != NULL) {
	/* a hit */
	FUNC5(resolved, rp, MAXPATHLEN);
    } else if ((rp = FUNC4(pathname, resolved)) != NULL) {
	FUNC0(pathname, rp, cache, 0);
    }
    FUNC2(cp);
    return rp ? resolved : NULL;
}