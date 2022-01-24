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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int CTL_NET ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int PF_ROUTE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

u_char *
FUNC5(int af, int info, int arg, size_t *lenp)
{
	int name[6];
	u_char *buf, *newbuf;

	name[0] = CTL_NET;
	name[1] = PF_ROUTE;
	name[2] = 0;
	name[3] = af;
	name[4] = info;
	name[5] = arg;

	*lenp = 0;

	/* initial estimate */
	if (FUNC3(name, FUNC1(name), NULL, lenp, NULL, 0) == -1) {
		FUNC4(LOG_ERR, "sysctl estimate (%d,%d,%d,%d,%d,%d): %m",
		    name[0], name[1], name[2], name[3], name[4], name[5]);
		return (NULL);
	}
	if (*lenp == 0)
		return (NULL);

	buf = NULL;
	for (;;) {
		if ((newbuf = FUNC2(buf, *lenp)) == NULL) {
			FUNC4(LOG_ERR, "sysctl buffer: %m");
			FUNC0(buf);
			return (NULL);
		}
		buf = newbuf;

		if (FUNC3(name, FUNC1(name), buf, lenp, NULL, 0) == 0)
			break;

		if (errno != ENOMEM) {
			FUNC4(LOG_ERR, "sysctl get: %m");
			FUNC0(buf);
			return (NULL);
		}
		*lenp += *lenp / 8 + 1;
	}

	return (buf);
}