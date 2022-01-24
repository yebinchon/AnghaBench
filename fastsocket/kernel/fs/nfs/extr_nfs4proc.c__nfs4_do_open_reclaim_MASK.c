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
struct nfs_open_context {int dummy; } ;
struct nfs_delegation {int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  delegation_type; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct nfs4_opendata {TYPE_2__ o_arg; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_6__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  NFS4_OPEN_CLAIM_PREVIOUS ; 
 int /*<<< orphan*/  NFS_DELEGATION_NEED_RECLAIM ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs4_opendata*) ; 
 int FUNC3 (struct nfs4_opendata*,struct nfs4_state*) ; 
 struct nfs4_opendata* FUNC4 (struct nfs_open_context*,struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_opendata*) ; 
 struct nfs_delegation* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct nfs_open_context *ctx, struct nfs4_state *state)
{
	struct nfs_delegation *delegation;
	struct nfs4_opendata *opendata;
	fmode_t delegation_type = 0;
	int status;

	opendata = FUNC4(ctx, state,
			NFS4_OPEN_CLAIM_PREVIOUS);
	if (FUNC0(opendata))
		return FUNC2(opendata);
	FUNC7();
	delegation = FUNC6(FUNC1(state->inode)->delegation);
	if (delegation != NULL && FUNC9(NFS_DELEGATION_NEED_RECLAIM, &delegation->flags) != 0)
		delegation_type = delegation->type;
	FUNC8();
	opendata->o_arg.u.delegation_type = delegation_type;
	status = FUNC3(opendata, state);
	FUNC5(opendata);
	return status;
}