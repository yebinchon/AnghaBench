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
struct rpc_cred {TYPE_1__* cr_ops; int /*<<< orphan*/  cr_lru; int /*<<< orphan*/  cr_expire; int /*<<< orphan*/  cr_flags; int /*<<< orphan*/  cr_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* crdestroy ) (struct rpc_cred*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAUTH_CRED_HASHED ; 
 int /*<<< orphan*/  RPCAUTH_CRED_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cred_unused ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  number_cred_unused ; 
 int /*<<< orphan*/  rpc_credcache_lock ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_cred*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC10(struct rpc_cred *cred)
{
	/* Fast path for unhashed credentials */
	if (FUNC9(RPCAUTH_CRED_HASHED, &cred->cr_flags) == 0) {
		if (FUNC1(&cred->cr_count))
			cred->cr_ops->crdestroy(cred);
		return;
	}

	if (!FUNC0(&cred->cr_count, &rpc_credcache_lock))
		return;
	if (!FUNC4(&cred->cr_lru)) {
		number_cred_unused--;
		FUNC3(&cred->cr_lru);
	}
	if (FUNC9(RPCAUTH_CRED_HASHED, &cred->cr_flags) != 0) {
		if (FUNC9(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0) {
			cred->cr_expire = jiffies;
			FUNC2(&cred->cr_lru, &cred_unused);
			number_cred_unused++;
			goto out_nodestroy;
		}
		if (!FUNC5(cred)) {
			/* We were hashed and someone looked us up... */
			goto out_nodestroy;
		}
	}
	FUNC6(&rpc_credcache_lock);
	cred->cr_ops->crdestroy(cred);
	return;
out_nodestroy:
	FUNC6(&rpc_credcache_lock);
}