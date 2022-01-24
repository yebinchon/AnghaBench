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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *s, unsigned int style, unsigned int rc)
{

	(void) rc;			/* XXX */
	switch (style) {
	case ELFTC_DEM_ARM: return (FUNC1(s));
	case ELFTC_DEM_GNU2: return (FUNC2(s));
	case ELFTC_DEM_GNU3: return (FUNC3(s));
	default:
		FUNC0(0);
		return (NULL);
	}
}