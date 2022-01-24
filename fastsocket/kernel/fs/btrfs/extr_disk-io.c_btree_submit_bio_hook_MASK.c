#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {TYPE_1__* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  __btree_submit_bio_done ; 
 int /*<<< orphan*/  __btree_submit_bio_start ; 
 int FUNC1 (int /*<<< orphan*/ ,struct bio*,int) ; 
 int FUNC2 (TYPE_1__*,int,struct bio*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct inode*,int,struct bio*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, int rw, struct bio *bio,
				 int mirror_num, unsigned long bio_flags,
				 u64 bio_offset)
{
	int ret;

	if (!(rw & REQ_WRITE)) {

		/*
		 * called for a read, do the setup so that checksum validation
		 * can happen in the async kernel threads
		 */
		ret = FUNC1(FUNC0(inode)->root->fs_info,
					  bio, 1);
		if (ret)
			return ret;
		return FUNC2(FUNC0(inode)->root, rw, bio,
				     mirror_num, 0);
	}

	/*
	 * kthread helpers are used to submit writes so that checksumming
	 * can happen in parallel across all CPUs
	 */
	return FUNC3(FUNC0(inode)->root->fs_info,
				   inode, rw, bio, mirror_num, 0,
				   bio_offset,
				   __btree_submit_bio_start,
				   __btree_submit_bio_done);
}