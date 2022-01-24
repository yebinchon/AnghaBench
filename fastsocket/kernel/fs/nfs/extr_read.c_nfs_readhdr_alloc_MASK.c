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
struct nfs_pgio_header {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  rpc_list; int /*<<< orphan*/  pages; } ;
struct nfs_read_header {struct nfs_pgio_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfs_read_header* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_rdata_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct nfs_read_header *FUNC4(void)
{
	struct nfs_read_header *rhdr;

	rhdr = FUNC2(nfs_rdata_cachep, GFP_KERNEL);
	if (rhdr) {
		struct nfs_pgio_header *hdr = &rhdr->header;

		FUNC0(&hdr->pages);
		FUNC0(&hdr->rpc_list);
		FUNC3(&hdr->lock);
		FUNC1(&hdr->refcnt, 0);
	}
	return rhdr;
}