#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tk_status; } ;
struct nfs_read_data {TYPE_1__ task; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {int /*<<< orphan*/  completion_ops; int /*<<< orphan*/  pages; int /*<<< orphan*/  inode; int /*<<< orphan*/  flags; int /*<<< orphan*/  pnfs_error; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_2__* pnfs_curr_ld; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_INO_LAYOUTCOMMIT ; 
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int PNFS_LAYOUTRET_ON_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfs_read_data *data)
{
	struct nfs_pgio_header *hdr = data->header;

	FUNC3("pnfs read error = %d\n", hdr->pnfs_error);
	if (FUNC1(hdr->inode)->pnfs_curr_ld->flags &
	    PNFS_LAYOUTRET_ON_ERROR) {
		FUNC2(NFS_INO_LAYOUTCOMMIT, &FUNC0(hdr->inode)->flags);
		FUNC5(hdr->inode);
	}
	if (!FUNC6(NFS_IOHDR_REDO, &hdr->flags))
		data->task.tk_status = FUNC4(hdr->inode,
							&hdr->pages,
							hdr->completion_ops);
}