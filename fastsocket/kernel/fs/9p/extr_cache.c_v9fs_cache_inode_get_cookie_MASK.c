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
struct v9fs_cookie {scalar_t__ fscache; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v9fs_cookie*) ; 
 int /*<<< orphan*/  v9fs_cache_inode_index_def ; 
 struct v9fs_cookie* FUNC3 (struct inode*) ; 
 struct v9fs_session_info* FUNC4 (struct inode*) ; 

void FUNC5(struct inode *inode)
{
	struct v9fs_cookie *vcookie;
	struct v9fs_session_info *v9ses;

	if (!FUNC1(inode->i_mode))
		return;

	vcookie = FUNC3(inode);
	if (vcookie->fscache)
		return;

	v9ses = FUNC4(inode);
	vcookie->fscache = FUNC2(v9ses->fscache,
						  &v9fs_cache_inode_index_def,
						  vcookie);

	FUNC0(P9_DEBUG_FSC, "inode %p get cookie %p", inode,
		   vcookie->fscache);
}