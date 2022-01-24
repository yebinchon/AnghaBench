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
 int ENOSPC ; 
 int GREFS_PER_GRANT_FRAME ; 
 int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 () ; 
 int FUNC2 (unsigned int) ; 
 unsigned int nr_grant_frames ; 

__attribute__((used)) static int FUNC3(unsigned int req_entries)
{
	int rc;
	unsigned int cur, extra;

	cur = nr_grant_frames;
	extra = ((req_entries + (GREFS_PER_GRANT_FRAME-1)) /
		 GREFS_PER_GRANT_FRAME);
	if (cur + extra > FUNC1())
		return -ENOSPC;

	rc = FUNC0(cur, cur + extra - 1);
	if (rc == 0)
		rc = FUNC2(extra);

	return rc;
}