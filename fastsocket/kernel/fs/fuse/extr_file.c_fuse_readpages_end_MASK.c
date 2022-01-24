#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_3__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  error; } ;
struct TYPE_14__ {TYPE_6__ h; TYPE_2__* args; } ;
struct TYPE_8__ {size_t size; } ;
struct TYPE_11__ {int /*<<< orphan*/  attr_ver; TYPE_1__ in; } ;
struct TYPE_12__ {TYPE_4__ read; } ;
struct fuse_req {int num_pages; scalar_t__ ff; TYPE_7__ out; struct page** pages; TYPE_5__ misc; } ;
struct fuse_conn {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_10__ {struct inode* host; } ;
struct TYPE_9__ {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static void FUNC7(struct fuse_conn *fc, struct fuse_req *req)
{
	int i;
	size_t count = req->misc.read.in.size;
	size_t num_read = req->out.args[0].size;
	struct inode *inode = req->pages[0]->mapping->host;

	/*
	 * Short read means EOF.  If file size is larger, truncate it
	 */
	if (!req->out.h.error && num_read < count) {
		loff_t pos = FUNC5(req->pages[0]) + num_read;
		FUNC4(inode, pos, req->misc.read.attr_ver);
	}

	FUNC3(inode); /* atime changed */

	for (i = 0; i < req->num_pages; i++) {
		struct page *page = req->pages[i];
		if (!req->out.h.error)
			FUNC1(page);
		else
			FUNC0(page);
		FUNC6(page);
	}
	if (req->ff)
		FUNC2(req->ff);
}