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
struct ima_iint_cache {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  iint_cache ; 
 int /*<<< orphan*/  ima_enabled ; 
 int /*<<< orphan*/  ima_iint_lock ; 
 int /*<<< orphan*/  ima_iint_store ; 
 struct ima_iint_cache* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ima_iint_cache*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,struct ima_iint_cache*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inode *inode)
{
	struct ima_iint_cache *iint = NULL;
	int rc = 0;

	if (!ima_enabled)
		return 0;

	iint = FUNC0(iint_cache, GFP_NOFS);
	if (!iint)
		return -ENOMEM;

	rc = FUNC3(GFP_NOFS);
	if (rc < 0)
		goto out;

	FUNC5(&ima_iint_lock);
	rc = FUNC2(&ima_iint_store, (unsigned long)inode, iint);
	FUNC6(&ima_iint_lock);
	FUNC4();
out:
	if (rc < 0)
		FUNC1(iint_cache, iint);

	return rc;
}