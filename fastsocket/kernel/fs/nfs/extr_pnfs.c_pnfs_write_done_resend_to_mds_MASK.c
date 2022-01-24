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
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int dummy; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FLUSH_STABLE ; 
 int /*<<< orphan*/  FUNC0 (struct list_head) ; 
 struct list_head failed ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*,struct list_head*) ; 
 struct nfs_page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,struct nfs_pgio_completion_ops const*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				struct list_head *head,
				const struct nfs_pgio_completion_ops *compl_ops)
{
	struct nfs_pageio_descriptor pgio;
	FUNC0(failed);

	/* Resend all requests through the MDS */
	FUNC8(&pgio, inode, FLUSH_STABLE, compl_ops);
	while (!FUNC1(head)) {
		struct nfs_page *req = FUNC4(head->next);

		FUNC5(req);
		if (!FUNC6(&pgio, req))
			FUNC3(req, &failed);
	}
	FUNC7(&pgio);

	if (!FUNC1(&failed)) {
		/* For some reason our attempt to resend pages. Mark the
		 * overall send request as having failed, and let
		 * nfs_writeback_release_full deal with the error.
		 */
		FUNC2(&failed, head);
		return -EIO;
	}
	return 0;
}