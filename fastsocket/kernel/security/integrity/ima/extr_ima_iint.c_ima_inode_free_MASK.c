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
struct inode {int dummy; } ;
struct ima_iint_cache {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iint_rcu_free ; 
 int /*<<< orphan*/  ima_enabled ; 
 int /*<<< orphan*/  ima_iint_lock ; 
 int /*<<< orphan*/  ima_iint_store ; 
 struct ima_iint_cache* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode)
{
	struct ima_iint_cache *iint;

	if (!ima_enabled)
		return;

	FUNC2(&ima_iint_lock);
	iint = FUNC1(&ima_iint_store, (unsigned long)inode);
	FUNC3(&ima_iint_lock);
	if (iint)
		FUNC0(&iint->rcu, iint_rcu_free);
}