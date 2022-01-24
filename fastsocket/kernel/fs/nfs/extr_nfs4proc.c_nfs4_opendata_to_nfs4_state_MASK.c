#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct nfs_delegation {int flags; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_10__ {scalar_t__ claim; int /*<<< orphan*/  seqid; int /*<<< orphan*/  fmode; } ;
struct TYPE_11__ {scalar_t__ delegation_type; int /*<<< orphan*/  stateid; int /*<<< orphan*/  fh; } ;
struct TYPE_12__ {int valid; } ;
struct nfs4_opendata {TYPE_2__ o_arg; TYPE_3__ o_res; TYPE_6__* owner; TYPE_5__ f_attr; TYPE_1__* dir; int /*<<< orphan*/  rpc_done; } ;
struct inode {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  cl_server; } ;
struct TYPE_14__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_13__ {int /*<<< orphan*/  so_cred; } ;
struct TYPE_9__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 struct nfs4_state* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ; 
 int NFS_ATTR_FATTR ; 
 TYPE_8__* FUNC2 (struct inode*) ; 
 int NFS_DELEGATION_NEED_RECLAIM ; 
 TYPE_7__* FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct nfs4_state* FUNC6 (struct inode*,TYPE_6__*) ; 
 struct nfs4_state* FUNC7 (struct nfs4_opendata*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 struct nfs_delegation* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct nfs4_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfs4_state *FUNC17(struct nfs4_opendata *data)
{
	struct inode *inode;
	struct nfs4_state *state = NULL;
	struct nfs_delegation *delegation;
	int ret;

	if (!data->rpc_done) {
		state = FUNC7(data);
		goto out;
	}

	ret = -EAGAIN;
	if (!(data->f_attr.valid & NFS_ATTR_FATTR))
		goto err;
	inode = FUNC8(data->dir->d_sb, &data->o_res.fh, &data->f_attr);
	ret = FUNC4(inode);
	if (FUNC1(inode))
		goto err;
	ret = -ENOMEM;
	state = FUNC6(inode, data->owner);
	if (state == NULL)
		goto err_put_inode;
	if (data->o_res.delegation_type != 0) {
		int delegation_flags = 0;

		FUNC14();
		delegation = FUNC13(FUNC3(inode)->delegation);
		if (delegation)
			delegation_flags = delegation->flags;
		FUNC15();
		if (data->o_arg.claim == NFS4_OPEN_CLAIM_DELEGATE_CUR) {
			FUNC12("NFS: Broken NFSv4 server %s is "
					"returning a delegation for "
					"OPEN(CLAIM_DELEGATE_CUR)\n",
					FUNC2(inode)->cl_server);
		} else if ((delegation_flags & 1UL<<NFS_DELEGATION_NEED_RECLAIM) == 0)
			FUNC10(state->inode,
					data->owner->so_cred,
					&data->o_res);
		else
			FUNC9(state->inode,
					data->owner->so_cred,
					&data->o_res);
	}

	FUNC16(state, &data->o_res.stateid, NULL,
			data->o_arg.fmode);
	FUNC5(inode);
out:
	FUNC11(data->o_arg.seqid);
	return state;
err_put_inode:
	FUNC5(inode);
err:
	return FUNC0(ret);
}