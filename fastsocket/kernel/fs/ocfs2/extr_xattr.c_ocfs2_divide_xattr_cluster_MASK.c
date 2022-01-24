#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_7__ {scalar_t__ s_clustersize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OCFS2_XATTR_BUCKET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				      handle_t *handle,
				      u64 prev_blk,
				      u64 new_blk,
				      u32 *first_hash)
{
	u16 blk_per_bucket = FUNC3(inode->i_sb);
	int ret, credits = 2 * blk_per_bucket + handle->h_buffer_credits;

	FUNC0(OCFS2_XATTR_BUCKET_SIZE < FUNC1(inode->i_sb)->s_clustersize);

	ret = FUNC5(handle, credits);
	if (ret) {
		FUNC2(ret);
		return ret;
	}

	/* Move half of the xattr in start_blk to the next bucket. */
	return  FUNC4(inode, handle, prev_blk,
					  new_blk, first_hash, 1);
}