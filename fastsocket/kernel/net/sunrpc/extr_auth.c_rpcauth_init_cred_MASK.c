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
struct rpc_credops {int dummy; } ;
struct rpc_cred {int /*<<< orphan*/  cr_uid; int /*<<< orphan*/  cr_magic; int /*<<< orphan*/  cr_expire; struct rpc_credops const* cr_ops; struct rpc_auth* cr_auth; int /*<<< orphan*/  cr_count; int /*<<< orphan*/  cr_lru; int /*<<< orphan*/  cr_hash; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPCAUTH_CRED_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 

void
FUNC3(struct rpc_cred *cred, const struct auth_cred *acred,
		  struct rpc_auth *auth, const struct rpc_credops *ops)
{
	FUNC0(&cred->cr_hash);
	FUNC1(&cred->cr_lru);
	FUNC2(&cred->cr_count, 1);
	cred->cr_auth = auth;
	cred->cr_ops = ops;
	cred->cr_expire = jiffies;
#ifdef RPC_DEBUG
	cred->cr_magic = RPCAUTH_CRED_MAGIC;
#endif
	cred->cr_uid = acred->uid;
}