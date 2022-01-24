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
struct gfs2_sbd {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,int,int) ; 
 int FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
	ssize_t ret = len;
	int error = 0;
	int n = FUNC4(buf, NULL, 0);

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	switch (n) {
	case 0:
		FUNC3(sdp);
		break;
	case 1:
		error = FUNC2(sdp);
		break;
	default:
		ret = -EINVAL;
	}

	if (error)
		FUNC1(sdp, "freeze %d error %d", n, error);

	return ret;
}