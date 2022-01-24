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
struct rpc_authops {size_t au_flavor; } ;
typedef  size_t rpc_authflavor_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 size_t RPC_AUTH_MAXFLAVOR ; 
 struct rpc_authops const** auth_flavors ; 
 int /*<<< orphan*/  rpc_authflavor_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(const struct rpc_authops *ops)
{
	rpc_authflavor_t flavor;
	int ret = -EPERM;

	if ((flavor = ops->au_flavor) >= RPC_AUTH_MAXFLAVOR)
		return -EINVAL;
	FUNC0(&rpc_authflavor_lock);
	if (auth_flavors[flavor] == ops) {
		auth_flavors[flavor] = NULL;
		ret = 0;
	}
	FUNC1(&rpc_authflavor_lock);
	return ret;
}