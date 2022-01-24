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
struct rpc_cred {unsigned long cr_flags; } ;
struct unx_cred {struct rpc_cred uc_base; int /*<<< orphan*/ * uc_gids; int /*<<< orphan*/  uc_gid; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {TYPE_1__* group_info; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {unsigned int ngroups; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_cred* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 unsigned int NFS_NGROUPS ; 
 int /*<<< orphan*/  NOGROUP ; 
 unsigned long RPCAUTH_CRED_UPTODATE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unx_cred* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_cred*,struct auth_cred*,struct rpc_auth*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_credops ; 

__attribute__((used)) static struct rpc_cred *
FUNC5(struct rpc_auth *auth, struct auth_cred *acred, int flags)
{
	struct unx_cred	*cred;
	unsigned int groups = 0;
	unsigned int i;

	FUNC2("RPC:       allocating UNIX cred for uid %d gid %d\n",
			acred->uid, acred->gid);

	if (!(cred = FUNC3(sizeof(*cred), GFP_NOFS)))
		return FUNC0(-ENOMEM);

	FUNC4(&cred->uc_base, acred, auth, &unix_credops);
	cred->uc_base.cr_flags = 1UL << RPCAUTH_CRED_UPTODATE;

	if (acred->group_info != NULL)
		groups = acred->group_info->ngroups;
	if (groups > NFS_NGROUPS)
		groups = NFS_NGROUPS;

	cred->uc_gid = acred->gid;
	for (i = 0; i < groups; i++)
		cred->uc_gids[i] = FUNC1(acred->group_info, i);
	if (i < NFS_NGROUPS)
		cred->uc_gids[i] = NOGROUP;

	return &cred->uc_base;
}