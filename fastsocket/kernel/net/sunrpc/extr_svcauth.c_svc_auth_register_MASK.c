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
struct auth_ops {int dummy; } ;
typedef  size_t rpc_authflavor_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t RPC_AUTH_MAXFLAVOR ; 
 struct auth_ops** authtab ; 
 int /*<<< orphan*/  authtab_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(rpc_authflavor_t flavor, struct auth_ops *aops)
{
	int rv = -EINVAL;
	FUNC0(&authtab_lock);
	if (flavor < RPC_AUTH_MAXFLAVOR && authtab[flavor] == NULL) {
		authtab[flavor] = aops;
		rv = 0;
	}
	FUNC1(&authtab_lock);
	return rv;
}