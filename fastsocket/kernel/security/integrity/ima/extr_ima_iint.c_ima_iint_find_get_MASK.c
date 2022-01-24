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
struct ima_iint_cache {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ima_iint_store ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ima_iint_cache* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct ima_iint_cache *FUNC4(struct inode *inode)
{
	struct ima_iint_cache *iint;

	FUNC2();
	iint = FUNC1(&ima_iint_store, (unsigned long)inode);
	if (!iint)
		goto out;
	FUNC0(&iint->refcount);
out:
	FUNC3();
	return iint;
}