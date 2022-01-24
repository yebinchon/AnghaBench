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
struct gfs2_inode {int i_depth; void** i_hash_cache; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  void* __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_NOFS ; 
 scalar_t__ FUNC0 (void**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int FUNC1 (void**) ; 
 int __GFP_NOWARN ; 
 void** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 void** FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_inode*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (void**) ; 
 int /*<<< orphan*/  FUNC11 (void**) ; 
 void** FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (void**) ; 

__attribute__((used)) static int FUNC14(struct gfs2_inode *dip)
{
	struct buffer_head *dibh;
	u32 hsize;
	u32 hsize_bytes;
	__be64 *hc;
	__be64 *hc2, *h;
	int x;
	int error = 0;

	hsize = 1 << dip->i_depth;
	hsize_bytes = hsize * sizeof(__be64);

	hc = FUNC5(dip);
	if (FUNC0(hc))
		return FUNC1(hc);

	hc2 = FUNC12(hsize_bytes * 2, GFP_NOFS | __GFP_NOWARN);
	if (hc2 == NULL)
		hc2 = FUNC2(hsize_bytes * 2, GFP_NOFS, PAGE_KERNEL);

	if (!hc2)
		return -ENOMEM;

	h = hc2;
	error = FUNC8(dip, &dibh);
	if (error)
		goto out_kfree;

	for (x = 0; x < hsize; x++) {
		*h++ = *hc;
		*h++ = *hc;
		hc++;
	}

	error = FUNC7(dip, (char *)hc2, 0, hsize_bytes * 2);
	if (error != (hsize_bytes * 2))
		goto fail;

	FUNC6(dip);
	dip->i_hash_cache = hc2;
	dip->i_depth++;
	FUNC4(dip, dibh->b_data);
	FUNC3(dibh);
	return 0;

fail:
	/* Replace original hash table & size */
	FUNC7(dip, (char *)hc, 0, hsize_bytes);
	FUNC9(&dip->i_inode, hsize_bytes);
	FUNC4(dip, dibh->b_data);
	FUNC3(dibh);
out_kfree:
	if (FUNC10(hc2))
		FUNC13(hc2);
	else
		FUNC11(hc2);
	return error;
}