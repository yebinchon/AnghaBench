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
typedef  unsigned int u64 ;
struct ocfs2_super {unsigned int s_clustersize; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
				       u64 start, u64 len)
{
	int ret = 0;
	u64 tmpend, end = start + len;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	unsigned int csize = osb->s_clustersize;
	handle_t *handle;

	/*
	 * The "start" and "end" values are NOT necessarily part of
	 * the range whose allocation is being deleted. Rather, this
	 * is what the user passed in with the request. We must zero
	 * partial clusters here. There's no need to worry about
	 * physical allocation - the zeroing code knows to skip holes.
	 */
	FUNC3(0, "byte start: %llu, end: %llu\n",
	     (unsigned long long)start, (unsigned long long)end);

	/*
	 * If both edges are on a cluster boundary then there's no
	 * zeroing required as the region is part of the allocation to
	 * be truncated.
	 */
	if ((start & (csize - 1)) == 0 && (end & (csize - 1)) == 0)
		goto out;

	handle = FUNC6(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC4(ret);
		goto out;
	}

	/*
	 * We want to get the byte offset of the end of the 1st cluster.
	 */
	tmpend = (u64)osb->s_clustersize + (start & ~(osb->s_clustersize - 1));
	if (tmpend > end)
		tmpend = end;

	FUNC3(0, "1st range: start: %llu, tmpend: %llu\n",
	     (unsigned long long)start, (unsigned long long)tmpend);

	ret = FUNC7(inode, handle, start, tmpend);
	if (ret)
		FUNC4(ret);

	if (tmpend < end) {
		/*
		 * This may make start and end equal, but the zeroing
		 * code will skip any work in that case so there's no
		 * need to catch it up here.
		 */
		start = end & ~(osb->s_clustersize - 1);

		FUNC3(0, "2nd range: start: %llu, end: %llu\n",
		     (unsigned long long)start, (unsigned long long)end);

		ret = FUNC7(inode, handle, start, end);
		if (ret)
			FUNC4(ret);
	}

	FUNC5(osb, handle);
out:
	return ret;
}