#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct inode {struct timespec i_ctime; int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ i_disksize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EOFBLOCKS ; 
 int FALLOC_FL_KEEP_SIZE ; 
 struct timespec FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*,struct timespec*) ; 

__attribute__((used)) static void FUNC7(struct inode *inode,
				int mode, loff_t new_size, int update_ctime)
{
	struct timespec now;

	if (update_ctime) {
		now = FUNC1(inode->i_sb);
		if (!FUNC6(&inode->i_ctime, &now))
			inode->i_ctime = now;
	}
	/*
	 * Update only when preallocation was requested beyond
	 * the file size.
	 */
	if (!(mode & FALLOC_FL_KEEP_SIZE)) {
		if (new_size > FUNC4(inode))
			FUNC5(inode, new_size);
		if (new_size > FUNC0(inode)->i_disksize)
			FUNC3(inode, new_size);
	} else {
		/*
		 * Mark that we allocate beyond EOF so the subsequent truncate
		 * can proceed even if the new size is the same as i_size.
		 */
		if (new_size > FUNC4(inode))
			FUNC2(inode, EXT4_INODE_EOFBLOCKS);
	}

}