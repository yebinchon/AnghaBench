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
struct rpc_cred {int /*<<< orphan*/  cr_count; TYPE_2__* cr_auth; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_4__ {TYPE_1__* au_credcache; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct rpc_cred *cred)
{
	spinlock_t *cache_lock;
	int ret;

	cache_lock = &cred->cr_auth->au_credcache->lock;
	FUNC2(cache_lock);
	ret = FUNC0(&cred->cr_count) == 0;
	if (ret)
		FUNC1(cred);
	FUNC3(cache_lock);
	return ret;
}