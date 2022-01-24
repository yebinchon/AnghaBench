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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int MAX_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int npaths ; 
 int /*<<< orphan*/ * paths ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int stdpaths ; 

__attribute__((used)) static void
FUNC3(const char *path)
{
	if (npaths >= MAX_PATHS)
		FUNC1("too many -I directives");
	FUNC0(&paths[npaths - stdpaths + 1], &paths[npaths - stdpaths],
	    sizeof(path[0]) * stdpaths);
	paths[npaths - stdpaths] = FUNC2(path);
	npaths++;
}