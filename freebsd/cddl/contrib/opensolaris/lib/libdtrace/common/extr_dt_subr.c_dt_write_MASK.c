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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,void const*,int) ; 

ssize_t
FUNC2(dtrace_hdl_t *dtp, int fd, const void *buf, size_t n)
{
	ssize_t resid = n;
	ssize_t len;

	while (resid != 0) {
		if ((len = FUNC1(fd, buf, resid)) <= 0)
			break;

		resid -= len;
		buf = (char *)buf + len;
	}

	if (resid == n && n != 0)
		return (FUNC0(dtp, errno));

	return (n - resid);
}