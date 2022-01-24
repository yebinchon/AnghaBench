#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_page {int /*<<< orphan*/  wb_flags; int /*<<< orphan*/  wb_page; TYPE_2__* wb_context; } ;
struct nfs_inode {int /*<<< orphan*/  npages; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  PG_MAPPED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct nfs_page *req)
{
	struct inode *inode = req->wb_context->dentry->d_inode;
	struct nfs_inode *nfsi = FUNC2(inode);

	FUNC0 (!FUNC3(req));

	FUNC7(&inode->i_lock);
	FUNC6(req->wb_page, 0);
	FUNC1(req->wb_page);
	FUNC4(PG_MAPPED, &req->wb_flags);
	nfsi->npages--;
	FUNC8(&inode->i_lock);
	FUNC5(req);
}