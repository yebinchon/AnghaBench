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
typedef  size_t u32 ;
struct rpc_clnt {struct rpc_auth* cl_auth; } ;
struct rpc_authops {int /*<<< orphan*/  owner; struct rpc_auth* (* create ) (struct rpc_clnt*,int /*<<< orphan*/ ) ;} ;
struct rpc_auth {int dummy; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct rpc_auth* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rpc_auth*) ; 
 size_t RPC_AUTH_MAXFLAVOR ; 
 struct rpc_authops** auth_flavors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  rpc_authflavor_lock ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_auth*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rpc_auth* FUNC8 (struct rpc_clnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct rpc_auth *
FUNC10(rpc_authflavor_t pseudoflavor, struct rpc_clnt *clnt)
{
	struct rpc_auth		*auth;
	const struct rpc_authops *ops;
	u32			flavor = FUNC3(pseudoflavor);

	auth = FUNC0(-EINVAL);
	if (flavor >= RPC_AUTH_MAXFLAVOR)
		goto out;

	if ((ops = auth_flavors[flavor]) == NULL)
		FUNC4("rpc-auth-%u", flavor);
	FUNC6(&rpc_authflavor_lock);
	ops = auth_flavors[flavor];
	if (ops == NULL || !FUNC9(ops->owner)) {
		FUNC7(&rpc_authflavor_lock);
		goto out;
	}
	FUNC7(&rpc_authflavor_lock);
	auth = ops->create(clnt, pseudoflavor);
	FUNC2(ops->owner);
	if (FUNC1(auth))
		return auth;
	if (clnt->cl_auth)
		FUNC5(clnt->cl_auth);
	clnt->cl_auth = auth;

out:
	return auth;
}