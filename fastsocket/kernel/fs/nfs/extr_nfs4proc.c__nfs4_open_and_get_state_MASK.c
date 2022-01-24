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
struct nfs_server {int caps; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_reclaim_seqcount; int /*<<< orphan*/  so_cred; struct nfs_server* so_server; } ;
struct nfs4_state {int /*<<< orphan*/  flags; } ;
struct nfs4_opendata {struct nfs4_state_owner* owner; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_state*) ; 
 int NFS_CAP_POSIX_LOCK ; 
 int /*<<< orphan*/  NFS_STATE_POSIX_LOCKS ; 
 int FUNC1 (struct nfs4_state*) ; 
 int FUNC2 (struct nfs4_opendata*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs4_opendata*,struct nfs4_state*,int /*<<< orphan*/ ,int) ; 
 struct nfs4_state* FUNC4 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_server*,struct nfs4_state*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct nfs4_opendata *opendata,
		fmode_t fmode,
		int flags,
		struct nfs4_state **res)
{
	struct nfs4_state_owner *sp = opendata->owner;
	struct nfs_server *server = sp->so_server;
	struct nfs4_state *state;
	unsigned int seq;
	int ret;

	seq = FUNC6(&sp->so_reclaim_seqcount);

	ret = FUNC2(opendata);
	if (ret != 0)
		goto out;

	state = FUNC4(opendata);
	ret = FUNC1(state);
	if (FUNC0(state))
		goto out;
	if (server->caps & NFS_CAP_POSIX_LOCK)
		FUNC8(NFS_STATE_POSIX_LOCKS, &state->flags);

	ret = FUNC3(sp->so_cred, opendata, state, fmode, flags);
	if (ret != 0)
		goto out;

	if (FUNC7(&sp->so_reclaim_seqcount, seq))
		FUNC5(server, state);
	*res = state;
out:
	return ret;
}