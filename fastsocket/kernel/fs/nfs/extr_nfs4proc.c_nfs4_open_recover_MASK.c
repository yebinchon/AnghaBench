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
struct nfs4_state {scalar_t__ n_rdwr; scalar_t__ n_wronly; scalar_t__ n_rdonly; int /*<<< orphan*/  seqlock; int /*<<< orphan*/  open_stateid; int /*<<< orphan*/  stateid; int /*<<< orphan*/  flags; } ;
struct nfs4_opendata {int dummy; } ;

/* Variables and functions */
 int ESTALE ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 int /*<<< orphan*/  NFS_O_RDONLY_STATE ; 
 int /*<<< orphan*/  NFS_O_RDWR_STATE ; 
 int /*<<< orphan*/  NFS_O_WRONLY_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfs4_opendata*,int,struct nfs4_state**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nfs4_opendata *opendata, struct nfs4_state *state)
{
	struct nfs4_state *newstate;
	int ret;

	/* memory barrier prior to reading state->n_* */
	FUNC0(NFS_DELEGATED_STATE, &state->flags);
	FUNC4();
	if (state->n_rdwr != 0) {
		FUNC0(NFS_O_RDWR_STATE, &state->flags);
		ret = FUNC1(opendata, FMODE_READ|FMODE_WRITE, &newstate);
		if (ret != 0)
			return ret;
		if (newstate != state)
			return -ESTALE;
	}
	if (state->n_wronly != 0) {
		FUNC0(NFS_O_WRONLY_STATE, &state->flags);
		ret = FUNC1(opendata, FMODE_WRITE, &newstate);
		if (ret != 0)
			return ret;
		if (newstate != state)
			return -ESTALE;
	}
	if (state->n_rdonly != 0) {
		FUNC0(NFS_O_RDONLY_STATE, &state->flags);
		ret = FUNC1(opendata, FMODE_READ, &newstate);
		if (ret != 0)
			return ret;
		if (newstate != state)
			return -ESTALE;
	}
	/*
	 * We may have performed cached opens for all three recoveries.
	 * Check if we need to update the current stateid.
	 */
	if (FUNC5(NFS_DELEGATED_STATE, &state->flags) == 0 &&
	    !FUNC3(&state->stateid, &state->open_stateid)) {
		FUNC6(&state->seqlock);
		if (FUNC5(NFS_DELEGATED_STATE, &state->flags) == 0)
			FUNC2(&state->stateid, &state->open_stateid);
		FUNC7(&state->seqlock);
	}
	return 0;
}