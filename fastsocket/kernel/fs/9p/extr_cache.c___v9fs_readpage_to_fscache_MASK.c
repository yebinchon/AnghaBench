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
struct v9fs_cookie {int /*<<< orphan*/  fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 struct v9fs_cookie* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct page*) ; 

void FUNC4(struct inode *inode, struct page *page)
{
	int ret;
	const struct v9fs_cookie *vcookie = FUNC2(inode);

	FUNC0(P9_DEBUG_FSC, "inode %p page %p", inode, page);
	ret = FUNC1(vcookie->fscache, page, GFP_KERNEL);
	FUNC0(P9_DEBUG_FSC, "ret =  %d", ret);
	if (ret != 0)
		FUNC3(inode, page);
}