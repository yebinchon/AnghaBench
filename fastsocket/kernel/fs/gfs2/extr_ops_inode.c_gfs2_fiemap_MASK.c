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
typedef  int u64 ;
typedef  int u32 ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_mutex; } ;
struct gfs2_inode {int i_no_addr; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;

/* Variables and functions */
 int FIEMAP_EXTENT_DATA_INLINE ; 
 int FIEMAP_EXTENT_LAST ; 
 int FIEMAP_EXTENT_NOT_ALIGNED ; 
 int /*<<< orphan*/  FIEMAP_FLAG_SYNC ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC1 (struct inode*,struct fiemap_extent_info*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fiemap_extent_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fiemap_extent_info*,int,int,int,int) ; 
 int /*<<< orphan*/  gfs2_block_map ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct fiemap_extent_info *fieinfo,
		       u64 start, u64 len)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	ret = FUNC2(fieinfo, FIEMAP_FLAG_SYNC);
	if (ret)
		return ret;

	FUNC8(&inode->i_mutex);

	ret = FUNC5(ip->i_gl, LM_ST_SHARED, 0, &gh);
	if (ret)
		goto out;

	if (FUNC6(ip)) {
		u64 phys = ip->i_no_addr << inode->i_blkbits;
		u64 size = FUNC7(inode);
		u32 flags = FIEMAP_EXTENT_LAST|FIEMAP_EXTENT_NOT_ALIGNED|
			    FIEMAP_EXTENT_DATA_INLINE;
		phys += sizeof(struct gfs2_dinode);
		phys += start;
		if (start + len > size)
			len = size - start;
		if (start < size)
			ret = FUNC3(fieinfo, start, phys,
						      len, flags);
		if (ret == 1)
			ret = 0;
	} else {
		ret = FUNC1(inode, fieinfo, start, len,
					     gfs2_block_map);
	}

	FUNC4(&gh);
out:
	FUNC9(&inode->i_mutex);
	return ret;
}