#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_page {int /*<<< orphan*/  wb_bytes; TYPE_3__* wb_context; int /*<<< orphan*/  wb_page; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 scalar_t__ FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nfs_page *req)
{
	struct inode *d_inode = req->wb_context->dentry->d_inode;

	if (FUNC1(req->wb_page))
		FUNC3(d_inode, req->wb_page, 0);

	FUNC6(req->wb_page);

	FUNC2("NFS: read done (%s/%Ld %d@%Ld)\n",
			req->wb_context->dentry->d_inode->i_sb->s_id,
			(long long)FUNC0(req->wb_context->dentry->d_inode),
			req->wb_bytes,
			(long long)FUNC5(req));
	FUNC4(req);
}