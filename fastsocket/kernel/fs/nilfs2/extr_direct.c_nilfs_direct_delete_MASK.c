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
union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ NILFS_BMAP_INVALID_PTR ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  NILFS_DIRECT_KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 struct inode* FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_bmap*,int) ; 
 scalar_t__ FUNC5 (struct nilfs_direct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_direct*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct nilfs_bmap *bmap, __u64 key)
{
	struct nilfs_direct *direct = (struct nilfs_direct *)bmap;
	union nilfs_bmap_ptr_req req;
	struct inode *dat;
	int ret;

	if (key > NILFS_DIRECT_KEY_MAX ||
	    FUNC5(direct, key) == NILFS_BMAP_INVALID_PTR)
		return -ENOENT;

	dat = FUNC0(bmap) ? FUNC2(bmap) : NULL;
	req.bpr_ptr = FUNC5(direct, key);

	ret = FUNC3(bmap, &req, dat);
	if (!ret) {
		FUNC1(bmap, &req, dat);
		FUNC6(direct, key, NILFS_BMAP_INVALID_PTR);
		FUNC4(bmap, 1);
	}
	return ret;
}