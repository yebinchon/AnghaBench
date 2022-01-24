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
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  lseg; int /*<<< orphan*/  verf; int /*<<< orphan*/  flags; int /*<<< orphan*/  error; TYPE_1__ pages; int /*<<< orphan*/  inode; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; int /*<<< orphan*/  wb_verf; int /*<<< orphan*/  wb_context; scalar_t__ wb_bytes; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  NFS_IOHDR_NEED_COMMIT ; 
 int /*<<< orphan*/  NFS_IOHDR_NEED_RESCHED ; 
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 struct nfs_page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*,int /*<<< orphan*/ ,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct nfs_pgio_header *hdr)
{
	struct nfs_commit_info cinfo;
	unsigned long bytes = 0;

	if (FUNC14(NFS_IOHDR_REDO, &hdr->flags))
		goto out;
	FUNC4(&cinfo, hdr->inode);
	while (!FUNC0(&hdr->pages)) {
		struct nfs_page *req = FUNC6(hdr->pages.next);

		bytes += req->wb_bytes;
		FUNC7(req);
		if (FUNC14(NFS_IOHDR_ERROR, &hdr->flags) &&
		    (hdr->good_bytes < bytes)) {
			FUNC11(req->wb_page);
			FUNC2(req->wb_context, hdr->error);
			goto remove_req;
		}
		if (FUNC14(NFS_IOHDR_NEED_RESCHED, &hdr->flags)) {
			FUNC9(req);
			goto next;
		}
		if (FUNC14(NFS_IOHDR_NEED_COMMIT, &hdr->flags)) {
			FUNC1(&req->wb_verf, hdr->verf, sizeof(req->wb_verf));
			FUNC8(req, hdr->lseg, &cinfo);
			goto next;
		}
remove_req:
		FUNC5(req);
next:
		FUNC12(req);
		FUNC3(req->wb_page);
		FUNC10(req);
	}
out:
	hdr->release(hdr);
}