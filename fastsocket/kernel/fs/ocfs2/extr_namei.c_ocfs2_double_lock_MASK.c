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
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OI_LS_RENAME1 ; 
 int /*<<< orphan*/  OI_LS_RENAME2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb,
			     struct buffer_head **bh1,
			     struct inode *inode1,
			     struct buffer_head **bh2,
			     struct inode *inode2)
{
	int status;
	struct ocfs2_inode_info *oi1 = FUNC0(inode1);
	struct ocfs2_inode_info *oi2 = FUNC0(inode2);
	struct buffer_head **tmpbh;
	struct inode *tmpinode;

	FUNC2("(inode1 = %llu, inode2 = %llu)\n",
		   (unsigned long long)oi1->ip_blkno,
		   (unsigned long long)oi2->ip_blkno);

	if (*bh1)
		*bh1 = NULL;
	if (*bh2)
		*bh2 = NULL;

	/* we always want to lock the one with the lower lockid first. */
	if (oi1->ip_blkno != oi2->ip_blkno) {
		if (oi1->ip_blkno < oi2->ip_blkno) {
			/* switch id1 and id2 around */
			FUNC1(0, "switching them around...\n");
			tmpbh = bh2;
			bh2 = bh1;
			bh1 = tmpbh;

			tmpinode = inode2;
			inode2 = inode1;
			inode1 = tmpinode;
		}
		/* lock id2 */
		status = FUNC5(inode2, bh2, 1,
						 OI_LS_RENAME1);
		if (status < 0) {
			if (status != -ENOENT)
				FUNC3(status);
			goto bail;
		}
	}

	/* lock id1 */
	status = FUNC5(inode1, bh1, 1, OI_LS_RENAME2);
	if (status < 0) {
		/*
		 * An error return must mean that no cluster locks
		 * were held on function exit.
		 */
		if (oi1->ip_blkno != oi2->ip_blkno)
			FUNC6(inode2, 1);

		if (status != -ENOENT)
			FUNC3(status);
	}

bail:
	FUNC4(status);
	return status;
}