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
struct nfs_page {int /*<<< orphan*/  wb_kref; int /*<<< orphan*/  wb_page; int /*<<< orphan*/  wb_flags; } ;
struct nfs_inode {int /*<<< orphan*/  npages; int /*<<< orphan*/  change_attr; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_WRITE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PG_MAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct inode *inode, struct nfs_page *req)
{
	struct nfs_inode *nfsi = FUNC0(inode);

	/* Lock the request! */
	FUNC4(req);

	FUNC7(&inode->i_lock);
	if (!nfsi->npages && FUNC3(inode, FMODE_WRITE))
		nfsi->change_attr++;
	FUNC5(PG_MAPPED, &req->wb_flags);
	FUNC1(req->wb_page);
	FUNC6(req->wb_page, (unsigned long)req);
	nfsi->npages++;
	FUNC2(&req->wb_kref);
	FUNC8(&inode->i_lock);
}