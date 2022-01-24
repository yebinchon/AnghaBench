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
struct nfs4_state {TYPE_1__* owner; int /*<<< orphan*/  seqlock; int /*<<< orphan*/  flags; int /*<<< orphan*/  stateid; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  so_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct nfs4_state *state, nfs4_stateid *open_stateid, const nfs4_stateid *deleg_stateid, fmode_t fmode)
{
	/*
	 * Protect the call to nfs4_state_set_mode_locked and
	 * serialise the stateid update
	 */
	FUNC6(&state->seqlock);
	if (deleg_stateid != NULL) {
		FUNC0(&state->stateid, deleg_stateid);
		FUNC2(NFS_DELEGATED_STATE, &state->flags);
	}
	if (open_stateid != NULL)
		FUNC1(state, open_stateid, fmode);
	FUNC7(&state->seqlock);
	FUNC3(&state->owner->so_lock);
	FUNC5(state, fmode);
	FUNC4(&state->owner->so_lock);
}