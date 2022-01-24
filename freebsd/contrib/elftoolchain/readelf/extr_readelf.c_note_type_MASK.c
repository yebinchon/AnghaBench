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
 unsigned int ET_CORE ; 
 char const* FUNC0 (unsigned int) ; 
 char const* FUNC1 (unsigned int) ; 
 char const* FUNC2 (unsigned int) ; 
 char const* FUNC3 (unsigned int) ; 
 char const* FUNC4 (unsigned int) ; 
 char const* FUNC5 (unsigned int) ; 
 char const* FUNC6 (unsigned int) ; 
 char const* FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static const char *
FUNC9(const char *name, unsigned int et, unsigned int nt)
{
	if ((FUNC8(name, "CORE") == 0 || FUNC8(name, "LINUX") == 0) &&
	    et == ET_CORE)
		return FUNC3(nt);
	else if (FUNC8(name, "FreeBSD") == 0)
		if (et == ET_CORE)
			return FUNC1(nt);
		else
			return FUNC0(nt);
	else if (FUNC8(name, "GNU") == 0 && et != ET_CORE)
		return FUNC2(nt);
	else if (FUNC8(name, "NetBSD") == 0 && et != ET_CORE)
		return FUNC4(nt);
	else if (FUNC8(name, "OpenBSD") == 0 && et != ET_CORE)
		return FUNC5(nt);
	else if (FUNC8(name, "Xen") == 0 && et != ET_CORE)
		return FUNC7(nt);
	return FUNC6(nt);
}