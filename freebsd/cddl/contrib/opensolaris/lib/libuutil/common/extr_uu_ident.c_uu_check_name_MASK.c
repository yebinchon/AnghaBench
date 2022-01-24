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
typedef  int uint_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_ERROR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int UU_NAME_DOMAIN ; 
 int UU_NAME_PATH ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(const char *name, uint_t flags)
{
	const char *end = name + FUNC2(name);
	const char *p;

	if (flags & ~(UU_NAME_DOMAIN | UU_NAME_PATH)) {
		FUNC3(UU_ERROR_UNKNOWN_FLAG);
		return (-1);
	}

	if (!(flags & UU_NAME_PATH)) {
		if (!FUNC0(name, end, flags))
			goto bad;
		return (0);
	}

	while ((p = FUNC1(name, '/')) != NULL) {
		if (!FUNC0(name, p - 1, flags))
			goto bad;
		name = p + 1;
	}
	if (!FUNC0(name, end, flags))
		goto bad;

	return (0);

bad:
	FUNC3(UU_ERROR_INVALID_ARGUMENT);
	return (-1);
}