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
 int ELFTC_DEM_ARM ; 
 int ELFTC_DEM_GNU2 ; 
 int ELFTC_DEM_GNU3 ; 
 int ELFTC_DEM_UNKNOWN ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC2(const char *opt)
{

	if (opt == NULL)
		return (ELFTC_DEM_UNKNOWN);
	else if (!FUNC1(opt, "gnu-v2", 6))
		return (ELFTC_DEM_GNU2);
	else if (!FUNC1(opt, "gnu-v3", 6))
		return (ELFTC_DEM_GNU3);
	else if (!FUNC1(opt, "arm", 3))
		return (ELFTC_DEM_ARM);
	else
		FUNC0(EXIT_FAILURE, "unknown demangling style '%s'", opt);

	/* NOTREACHED */
	return (0);
}