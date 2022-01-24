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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ eof; } ;
struct nfs_read_data {TYPE_2__ args; TYPE_1__ res; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {scalar_t__ io_start; scalar_t__ good_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_EOF ; 
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct rpc_task*,struct nfs_read_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,struct nfs_read_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pgio_header*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rpc_task *task, void *calldata)
{
	struct nfs_read_data *data = calldata;
	struct nfs_pgio_header *hdr = data->header;

	/* Note the only returns of nfs_readpage_result are 0 and -EAGAIN */
	if (FUNC1(task, data) != 0)
		return;
	if (task->tk_status < 0)
		FUNC3(hdr, task->tk_status, data->args.offset);
	else if (data->res.eof) {
		loff_t bound;

		bound = data->args.offset + data->res.count;
		FUNC5(&hdr->lock);
		if (bound < hdr->io_start + hdr->good_bytes) {
			FUNC4(NFS_IOHDR_EOF, &hdr->flags);
			FUNC0(NFS_IOHDR_ERROR, &hdr->flags);
			hdr->good_bytes = bound - hdr->io_start;
		}
		FUNC6(&hdr->lock);
	} else if (data->res.count != data->args.count)
		FUNC2(task, data);
}