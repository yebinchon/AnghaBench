#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_5__ {int rflags; int /*<<< orphan*/  server; TYPE_1__* f_attr; int /*<<< orphan*/  seq_res; } ;
struct nfs4_opendata {scalar_t__ rpc_status; int rpc_done; TYPE_3__* owner; TYPE_2__ o_res; int /*<<< orphan*/  timestamp; } ;
struct TYPE_6__ {int /*<<< orphan*/  so_seqid; } ;
struct TYPE_4__ {int valid; int mode; } ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 scalar_t__ ELOOP ; 
 scalar_t__ ENOTDIR ; 
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int NFS_ATTR_FATTR_TYPE ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *calldata)
{
	struct nfs4_opendata *data = calldata;

	data->rpc_status = task->tk_status;

	if (!FUNC0(task, &data->o_res.seq_res))
		return;

	if (task->tk_status == 0) {
		if (data->o_res.f_attr->valid & NFS_ATTR_FATTR_TYPE) {
			switch (data->o_res.f_attr->mode & S_IFMT) {
			case S_IFREG:
				break;
			case S_IFLNK:
				data->rpc_status = -ELOOP;
				break;
			case S_IFDIR:
				data->rpc_status = -EISDIR;
				break;
			default:
				data->rpc_status = -ENOTDIR;
			}
		}
		FUNC2(data->o_res.server, data->timestamp);
		if (!(data->o_res.rflags & NFS4_OPEN_RESULT_CONFIRM))
			FUNC1(&data->owner->so_seqid, 0);
	}
	data->rpc_done = 1;
}