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
union nilfs_bmap_ptr_req {int /*<<< orphan*/  bpr_ptr; } ;
struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 scalar_t__ NILFS_BMAP_INVALID_PTR ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 scalar_t__ NILFS_DIRECT_KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*) ; 
 struct inode* FUNC4 (struct nilfs_bmap*) ; 
 int FUNC5 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_direct*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct nilfs_direct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_direct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_direct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC12(struct nilfs_bmap *bmap, __u64 key, __u64 ptr)
{
	struct nilfs_direct *direct = (struct nilfs_direct *)bmap;
	union nilfs_bmap_ptr_req req;
	struct inode *dat = NULL;
	struct buffer_head *bh;
	int ret;

	if (key > NILFS_DIRECT_KEY_MAX)
		return -ENOENT;
	if (FUNC8(direct, key) != NILFS_BMAP_INVALID_PTR)
		return -EEXIST;

	if (FUNC0(bmap)) {
		req.bpr_ptr = FUNC7(direct, key);
		dat = FUNC4(bmap);
	}
	ret = FUNC5(bmap, &req, dat);
	if (!ret) {
		/* ptr must be a pointer to a buffer head. */
		bh = (struct buffer_head *)((unsigned long)ptr);
		FUNC11(bh);

		FUNC2(bmap, &req, dat);
		FUNC9(direct, key, req.bpr_ptr);

		if (!FUNC3(bmap))
			FUNC6(bmap);

		if (FUNC0(bmap))
			FUNC10(direct, key, req.bpr_ptr);

		FUNC1(bmap, 1);
	}
	return ret;
}