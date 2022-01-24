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
struct v9fs_cookie {int /*<<< orphan*/ * fscache; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct v9fs_cookie* FUNC2 (struct inode*) ; 

void FUNC3(struct inode *inode)
{
	struct v9fs_cookie *vcookie = FUNC2(inode);

	if (!vcookie->fscache)
		return;
	FUNC0(P9_DEBUG_FSC, "inode %p put cookie %p", inode,
		   vcookie->fscache);

	FUNC1(vcookie->fscache, 0);
	vcookie->fscache = NULL;
}