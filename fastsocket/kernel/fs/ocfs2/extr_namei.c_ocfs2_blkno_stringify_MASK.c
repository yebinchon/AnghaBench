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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int EINVAL ; 
 int OCFS2_ORPHAN_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int,char*,long long) ; 

__attribute__((used)) static int FUNC5(u64 blkno, char *name)
{
	int status, namelen;

	FUNC1();

	namelen = FUNC4(name, OCFS2_ORPHAN_NAMELEN + 1, "%016llx",
			   (long long)blkno);
	if (namelen <= 0) {
		if (namelen)
			status = namelen;
		else
			status = -EINVAL;
		FUNC2(status);
		goto bail;
	}
	if (namelen != OCFS2_ORPHAN_NAMELEN) {
		status = -EINVAL;
		FUNC2(status);
		goto bail;
	}

	FUNC0(0, "built filename '%s' for orphan dir (len=%d)\n", name,
	     namelen);

	status = 0;
bail:
	FUNC3(status);
	return status;
}