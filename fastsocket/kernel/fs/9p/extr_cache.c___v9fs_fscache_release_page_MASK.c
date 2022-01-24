#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v9fs_cookie {int /*<<< orphan*/  fscache; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 struct v9fs_cookie* FUNC2 (struct inode*) ; 

int FUNC3(struct page *page, gfp_t gfp)
{
	struct inode *inode = page->mapping->host;
	struct v9fs_cookie *vcookie = FUNC2(inode);

	FUNC0(!vcookie->fscache);

	return FUNC1(vcookie->fscache, page, gfp);
}