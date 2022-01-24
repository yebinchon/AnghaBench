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
#define  ELFTC_DEM_ARM 130 
#define  ELFTC_DEM_GNU2 129 
#define  ELFTC_DEM_GNU3 128 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static unsigned int
FUNC3(const char *s, unsigned int style)
{

	switch (style) {
	case ELFTC_DEM_ARM: return (FUNC0(s) ? style : 0);
	case ELFTC_DEM_GNU2: return (FUNC1(s) ? style : 0);
	case ELFTC_DEM_GNU3: return (FUNC2(s) ? style : 0);
	}

	/* No style or invalid style spcified, try to guess. */
	if (FUNC2(s))
		return (ELFTC_DEM_GNU3);
	if (FUNC1(s))
		return (ELFTC_DEM_GNU2);
	if (FUNC0(s))
		return (ELFTC_DEM_ARM);

	/* Cannot be demangled. */
	return (0);
}