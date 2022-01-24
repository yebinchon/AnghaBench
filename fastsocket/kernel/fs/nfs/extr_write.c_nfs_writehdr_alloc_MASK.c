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
struct nfs_pgio_header {int /*<<< orphan*/ * verf; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  rpc_list; int /*<<< orphan*/  pages; } ;
struct nfs_write_header {int /*<<< orphan*/  verf; struct nfs_pgio_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfs_write_header* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_write_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs_wdata_mempool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct nfs_write_header *FUNC5(void)
{
	struct nfs_write_header *p = FUNC2(nfs_wdata_mempool, GFP_NOFS);

	if (p) {
		struct nfs_pgio_header *hdr = &p->header;

		FUNC3(p, 0, sizeof(*p));
		FUNC0(&hdr->pages);
		FUNC0(&hdr->rpc_list);
		FUNC4(&hdr->lock);
		FUNC1(&hdr->refcnt, 0);
		hdr->verf = &p->verf;
	}
	return p;
}