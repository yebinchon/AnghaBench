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
 int const AF_INET ; 
 int const AF_INET6 ; 
 int /*<<< orphan*/  DBG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,char const*) ; 
 int FUNC1 (char const*,int,void*,char,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int,void*,char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(const int address_family, const char *cp, int len, void *dst)
{
	int ret = 0;

	/* calculate length by finding first slash or NULL */
	if (address_family == AF_INET)
		ret = FUNC1(cp, len, dst, '\\', NULL);
	else if (address_family == AF_INET6)
		ret = FUNC2(cp, len, dst , '\\', NULL);

	FUNC0(DBG2, "address conversion returned %d for %*.*s",
	     ret, len, len, cp);
	if (ret > 0)
		ret = 1;
	return ret;
}