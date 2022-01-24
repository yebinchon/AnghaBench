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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct gfs2_inode {int i_diskflags; int i_depth; int /*<<< orphan*/ * i_hash_cache; struct inode i_inode; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int GFP_NOFS ; 
 int GFS2_DIF_EXHASH ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be64 *FUNC12(struct gfs2_inode *ip)
{
	struct inode *inode = &ip->i_inode;
	int ret;
	u32 hsize;
	__be64 *hc;

	FUNC0(!(ip->i_diskflags & GFS2_DIF_EXHASH));

	hc = ip->i_hash_cache;
	if (hc)
		return hc;

	hsize = 1 << ip->i_depth;
	hsize *= sizeof(__be64);
	if (hsize != FUNC5(inode)) {
		FUNC3(ip);
		return FUNC1(-EIO);
	}

	hc = FUNC8(hsize, GFP_NOFS | __GFP_NOWARN);
	if (hc == NULL)
		hc = FUNC2(hsize, GFP_NOFS, PAGE_KERNEL);

	if (hc == NULL)
		return FUNC1(-ENOMEM);

	ret = FUNC4(ip, (char *)hc, 0, hsize, 1);
	if (ret < 0) {
		if (FUNC6(hc))
			FUNC11(hc);
		else
			FUNC7(hc);
		return FUNC1(ret);
	}

	FUNC9(&inode->i_lock);
	if (ip->i_hash_cache) {
		if (FUNC6(hc))
			FUNC11(hc);
		else
			FUNC7(hc);
	} else {
		ip->i_hash_cache = hc;
	}
	FUNC10(&inode->i_lock);

	return ip->i_hash_cache;
}