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
struct v9fs_session_info {int /*<<< orphan*/  fscache; } ;
struct v9fs_cookie {int /*<<< orphan*/  lock; struct fscache_cookie* fscache; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct inode*,struct fscache_cookie*,struct fscache_cookie*) ; 
 struct fscache_cookie* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v9fs_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_cookie*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v9fs_cache_inode_index_def ; 
 struct v9fs_cookie* FUNC5 (struct inode*) ; 
 struct v9fs_session_info* FUNC6 (struct inode*) ; 

void FUNC7(struct inode *inode)
{
	struct v9fs_cookie *vcookie = FUNC5(inode);
	struct v9fs_session_info *v9ses;
	struct fscache_cookie *old;

	if (!vcookie->fscache)
		return;

	old = vcookie->fscache;

	FUNC3(&vcookie->lock);
	FUNC2(vcookie->fscache, 1);

	v9ses = FUNC6(inode);
	vcookie->fscache = FUNC1(v9ses->fscache,
						  &v9fs_cache_inode_index_def,
						  vcookie);

	FUNC0(P9_DEBUG_FSC, "inode %p revalidating cookie old %p new %p",
		   inode, old, vcookie->fscache);

	FUNC4(&vcookie->lock);
}