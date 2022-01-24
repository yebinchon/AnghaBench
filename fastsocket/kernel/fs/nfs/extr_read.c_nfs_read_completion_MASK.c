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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  flags; TYPE_1__ pages; } ;
struct nfs_page {scalar_t__ wb_bytes; struct page* wb_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_EOF ; 
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct nfs_pgio_header *hdr)
{
	unsigned long bytes = 0;

	if (FUNC6(NFS_IOHDR_REDO, &hdr->flags))
		goto out;
	while (!FUNC1(&hdr->pages)) {
		struct nfs_page *req = FUNC2(hdr->pages.next);
		struct page *page = req->wb_page;

		if (FUNC6(NFS_IOHDR_EOF, &hdr->flags)) {
			if (bytes > hdr->good_bytes)
				FUNC7(page, 0, PAGE_SIZE);
			else if (hdr->good_bytes - bytes < PAGE_SIZE)
				FUNC8(page,
					hdr->good_bytes & ~PAGE_MASK,
					PAGE_SIZE);
		}
		bytes += req->wb_bytes;
		if (FUNC6(NFS_IOHDR_ERROR, &hdr->flags)) {
			if (bytes <= hdr->good_bytes)
				FUNC0(page);
		} else
			FUNC0(page);
		FUNC3(req);
		FUNC4(req);
	}
out:
	hdr->release(hdr);
}