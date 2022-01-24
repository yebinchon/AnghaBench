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
struct nfs_lockowner {int /*<<< orphan*/  l_pid; int /*<<< orphan*/  l_owner; } ;
struct nfs4_state {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct nfs4_lock_state {int ls_flags; TYPE_1__ ls_sequence; int /*<<< orphan*/  ls_stateid; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int ENOENT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  LK_STATE_IN_USE ; 
 int /*<<< orphan*/  NFS4_ANY_LOCK_TYPE ; 
 int NFS_LOCK_INITIALIZED ; 
 struct nfs4_lock_state* FUNC0 (struct nfs4_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_lock_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(nfs4_stateid *dst,
		struct nfs4_state *state,
		const struct nfs_lockowner *lockowner)
{
	struct nfs4_lock_state *lsp;
	fl_owner_t fl_owner;
	pid_t fl_pid;
	int ret = -ENOENT;


	if (lockowner == NULL)
		goto out;

	if (FUNC7(LK_STATE_IN_USE, &state->flags) == 0)
		goto out;

	fl_owner = lockowner->l_owner;
	fl_pid = lockowner->l_pid;
	FUNC5(&state->state_lock);
	lsp = FUNC0(state, fl_owner, fl_pid, NFS4_ANY_LOCK_TYPE);
	if (lsp != NULL && (lsp->ls_flags & NFS_LOCK_INITIALIZED) != 0) {
		FUNC3(dst, &lsp->ls_stateid);
		ret = 0;
		FUNC4();
		if (!FUNC1(&lsp->ls_sequence.list))
			ret = -EWOULDBLOCK;
	}
	FUNC6(&state->state_lock);
	FUNC2(lsp);
out:
	return ret;
}