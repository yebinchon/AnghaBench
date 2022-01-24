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
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_1__* au_ops; } ;
struct cred {int /*<<< orphan*/  group_info; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
struct auth_cred {int /*<<< orphan*/  group_info; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  acred ;
struct TYPE_2__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;int /*<<< orphan*/  au_name; } ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_cred*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rpc_cred* FUNC5 (struct rpc_auth*,struct auth_cred*,int) ; 

struct rpc_cred *
FUNC6(struct rpc_auth *auth, int flags)
{
	struct auth_cred acred;
	struct rpc_cred *ret;
	const struct cred *cred = FUNC0();

	FUNC1("RPC:       looking up %s cred\n",
		auth->au_ops->au_name);

	FUNC3(&acred, 0, sizeof(acred));
	acred.uid = cred->fsuid;
	acred.gid = cred->fsgid;
	acred.group_info = FUNC2(((struct cred *)cred)->group_info);

	ret = auth->au_ops->lookup_cred(auth, &acred, flags);
	FUNC4(acred.group_info);
	return ret;
}