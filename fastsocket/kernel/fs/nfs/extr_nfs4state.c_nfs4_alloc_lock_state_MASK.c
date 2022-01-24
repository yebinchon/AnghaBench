#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int /*<<< orphan*/  lockowner_id; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct nfs4_state {TYPE_1__* owner; } ;
struct TYPE_9__ {int /*<<< orphan*/  posix_owner; int /*<<< orphan*/  flock_owner; } ;
struct TYPE_10__ {unsigned int lo_type; TYPE_4__ lo_u; } ;
struct TYPE_8__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
struct TYPE_7__ {TYPE_3__* sequence; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_locks; int /*<<< orphan*/  ls_id; TYPE_5__ ls_owner; struct nfs4_state* ls_state; int /*<<< orphan*/  ls_count; TYPE_3__ ls_sequence; TYPE_2__ ls_seqid; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_6__ {struct nfs_server* so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  NFS4_FLOCK_LOCK_TYPE 129 
#define  NFS4_POSIX_LOCK_TYPE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_lock_state*) ; 
 struct nfs4_lock_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_lock_state *FUNC9(struct nfs4_state *state, fl_owner_t fl_owner, pid_t fl_pid, unsigned int type)
{
	struct nfs4_lock_state *lsp;
	struct nfs_server *server = state->owner->so_server;
	struct nfs_client *clp = server->nfs_client;

	lsp = FUNC3(sizeof(*lsp), GFP_NOFS);
	if (lsp == NULL)
		return NULL;
	FUNC5(&lsp->ls_sequence.wait, "lock_seqid_waitqueue");
	FUNC7(&lsp->ls_sequence.lock);
	FUNC0(&lsp->ls_sequence.list);
	lsp->ls_seqid.sequence = &lsp->ls_sequence;
	FUNC1(&lsp->ls_count, 1);
	lsp->ls_state = state;
	lsp->ls_owner.lo_type = type;
	switch (lsp->ls_owner.lo_type) {
	case NFS4_FLOCK_LOCK_TYPE:
		lsp->ls_owner.lo_u.flock_owner = fl_pid;
		break;
	case NFS4_POSIX_LOCK_TYPE:
		lsp->ls_owner.lo_u.posix_owner = fl_owner;
		break;
	default:
		FUNC2(lsp);
		return NULL;
	}
	FUNC6(&clp->cl_lock);
	FUNC4(&server->lockowner_id, &lsp->ls_id, 1, 64);
	FUNC8(&clp->cl_lock);
	FUNC0(&lsp->ls_locks);
	return lsp;
}