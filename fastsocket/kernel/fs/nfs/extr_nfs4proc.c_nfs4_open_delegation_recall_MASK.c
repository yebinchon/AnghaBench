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
struct nfs_server {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct nfs4_opendata {TYPE_2__ o_arg; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  NFS4_OPEN_CLAIM_DELEG_CUR_FH ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs4_opendata*) ; 
 int FUNC3 (struct nfs_server*,struct nfs4_state*,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (struct nfs4_opendata*,struct nfs4_state*) ; 
 struct nfs4_opendata* FUNC5 (struct nfs_open_context*,struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC8(struct nfs_open_context *ctx, struct nfs4_state *state, const nfs4_stateid *stateid)
{
	struct nfs_server *server = FUNC1(state->inode);
	struct nfs4_opendata *opendata;
	int err;

	opendata = FUNC5(ctx, state,
			NFS4_OPEN_CLAIM_DELEG_CUR_FH);
	if (FUNC0(opendata))
		return FUNC2(opendata);
	FUNC7(&opendata->o_arg.u.delegation, stateid);
	err = FUNC4(opendata, state);
	FUNC6(opendata);
	return FUNC3(server, state, stateid, err);
}