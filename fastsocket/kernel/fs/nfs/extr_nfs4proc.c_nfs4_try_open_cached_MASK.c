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
struct nfs_inode {int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct nfs4_state {int /*<<< orphan*/  count; TYPE_2__* owner; int /*<<< orphan*/  inode; } ;
struct TYPE_3__ {int open_flags; int /*<<< orphan*/  seqid; int /*<<< orphan*/  fmode; } ;
struct nfs4_opendata {int /*<<< orphan*/  is_recover; TYPE_1__ o_arg; struct nfs4_state* state; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  so_cred; int /*<<< orphan*/  so_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfs4_state* FUNC0 (int) ; 
 struct nfs_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nfs4_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_delegation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct nfs_delegation* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs4_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct nfs4_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfs4_state *FUNC15(struct nfs4_opendata *opendata)
{
	struct nfs4_state *state = opendata->state;
	struct nfs_inode *nfsi = FUNC1(state->inode);
	struct nfs_delegation *delegation;
	int open_mode = opendata->o_arg.open_flags & (O_EXCL|O_TRUNC);
	fmode_t fmode = opendata->o_arg.fmode;
	nfs4_stateid stateid;
	int ret = -EAGAIN;

	for (;;) {
		if (FUNC3(state, fmode, open_mode)) {
			FUNC11(&state->owner->so_lock);
			if (FUNC3(state, fmode, open_mode)) {
				FUNC13(state, fmode);
				FUNC12(&state->owner->so_lock);
				goto out_return_state;
			}
			FUNC12(&state->owner->so_lock);
		}
		FUNC9();
		delegation = FUNC8(nfsi->delegation);
		if (!FUNC4(delegation, fmode)) {
			FUNC10();
			break;
		}
		/* Save the delegation */
		FUNC5(&stateid, &delegation->stateid);
		FUNC10();
		FUNC7(opendata->o_arg.seqid);
		if (!opendata->is_recover) {
			ret = FUNC6(state->inode, state->owner->so_cred, open_mode);
			if (ret != 0)
				goto out;
		}
		ret = -EAGAIN;

		/* Try to update the stateid using the delegation */
		if (FUNC14(state, NULL, &stateid, fmode))
			goto out_return_state;
	}
out:
	return FUNC0(ret);
out_return_state:
	FUNC2(&state->count);
	return state;
}