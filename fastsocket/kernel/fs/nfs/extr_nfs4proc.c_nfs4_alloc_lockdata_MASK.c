#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int /*<<< orphan*/  s_dev; TYPE_3__* nfs_client; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_dev; int /*<<< orphan*/  id; int /*<<< orphan*/  clientid; } ;
struct TYPE_14__ {int /*<<< orphan*/ * open_seqid; int /*<<< orphan*/ * lock_seqid; TYPE_5__ lock_owner; int /*<<< orphan*/ * lock_stateid; int /*<<< orphan*/ * fl; int /*<<< orphan*/  fh; } ;
struct TYPE_13__ {int /*<<< orphan*/ * lock_seqid; } ;
struct nfs4_lockdata {TYPE_7__ arg; int /*<<< orphan*/  fl; int /*<<< orphan*/  ctx; struct nfs_server* server; struct nfs4_lock_state* lsp; TYPE_6__ res; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_count; TYPE_4__ ls_id; int /*<<< orphan*/  ls_stateid; int /*<<< orphan*/  ls_seqid; TYPE_2__* ls_state; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_10__ {int /*<<< orphan*/  cl_clientid; } ;
struct TYPE_9__ {TYPE_1__* owner; struct inode* inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  so_seqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_lockdata*) ; 
 struct nfs4_lockdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct file_lock*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_lockdata *FUNC9(struct file_lock *fl,
		struct nfs_open_context *ctx, struct nfs4_lock_state *lsp,
		gfp_t gfp_mask)
{
	struct nfs4_lockdata *p;
	struct inode *inode = lsp->ls_state->inode;
	struct nfs_server *server = FUNC1(inode);

	p = FUNC5(sizeof(*p), gfp_mask);
	if (p == NULL)
		return NULL;

	p->arg.fh = FUNC0(inode);
	p->arg.fl = &p->fl;
	p->arg.open_seqid = FUNC7(&lsp->ls_state->owner->so_seqid, gfp_mask);
	if (p->arg.open_seqid == NULL)
		goto out_free;
	p->arg.lock_seqid = FUNC7(&lsp->ls_seqid, gfp_mask);
	if (p->arg.lock_seqid == NULL)
		goto out_free_seqid;
	p->arg.lock_stateid = &lsp->ls_stateid;
	p->arg.lock_owner.clientid = server->nfs_client->cl_clientid;
	p->arg.lock_owner.id = lsp->ls_id.id;
	p->arg.lock_owner.s_dev = server->s_dev;
	p->res.lock_seqid = p->arg.lock_seqid;
	p->lsp = lsp;
	p->server = server;
	FUNC2(&lsp->ls_count);
	p->ctx = FUNC3(ctx);
	FUNC6(&p->fl, fl, sizeof(p->fl));
	return p;
out_free_seqid:
	FUNC8(p->arg.open_seqid);
out_free:
	FUNC4(p);
	return NULL;
}