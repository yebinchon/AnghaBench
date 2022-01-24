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
struct nfs_commit_data {int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs_commit_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_commit_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs_commit_mempool ; 

struct nfs_commit_data *FUNC3(void)
{
	struct nfs_commit_data *p = FUNC1(nfs_commit_mempool, GFP_NOFS);

	if (p) {
		FUNC2(p, 0, sizeof(*p));
		FUNC0(&p->pages);
	}
	return p;
}