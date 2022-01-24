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
struct nfs_write_data {struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {int /*<<< orphan*/  pages; int /*<<< orphan*/  flags; } ;
struct nfs_pageio_descriptor {int pg_recoalesce; int /*<<< orphan*/  pg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_write_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nfs_pageio_descriptor *desc,
		struct nfs_write_data *data)
{
	struct nfs_pgio_header *hdr = data->header;

	if (!FUNC3(NFS_IOHDR_REDO, &hdr->flags)) {
		FUNC0(&hdr->pages, &desc->pg_list);
		FUNC1(desc);
		desc->pg_recoalesce = 1;
	}
	FUNC2(data);
}